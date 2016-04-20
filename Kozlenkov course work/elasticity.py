#!/usr/bin/env python
# -*- coding=utf-8 -*-

from __future__ import print_function
from dolfin import *
import numpy as np
import sys
import os

try:
    dir = sys.argv[1]
except:
    # print str(u'Рабочий каталог не задан!!!')
    dir = "."

os.chdir(dir)

param_file = File("problem.xml")
params = Parameters("parameters")
param_file >> params
info(params, True)

nu_values = np.array([params['coefficients']['Poisson'][
                     '1'], params['coefficients']['Poisson']['2']])
E_values = np.array([params['coefficients']['Young']['1'],
                     params['coefficients']['Young']['2']]) * 1e-5
g_value = [params['boundCoefficients']['g']['1']['x'],
           params['boundCoefficients']['g']['1']['y'],
           params['boundCoefficients']['g']['1']['z']]
mu_values = E_values / (2.0 * (1.0 + nu_values))
lmbd_values = E_values * nu_values / \
    ((1.0 + nu_values) * (1.0 - 2.0 * nu_values))

mesh = Mesh(params['mesh']['path'])
subdomains = MeshFunction("size_t", mesh, params['mesh']['domains'])
boundaries = MeshFunction("size_t", mesh, params['mesh']['bounds'])

subdomains_f = File(params['results']['subdomains'])
subdomains_f << subdomains
boundaries_f = File(params['results']['boundaries'])
boundaries_f << boundaries

n = FacetNormal(mesh)

V0 = FunctionSpace(mesh, 'DG', 0)
mu = Function(V0)
lmbda = Function(V0)

help = np.asarray(subdomains.array(), dtype=np.int32)
mu.vector()[:] = np.choose(help, mu_values)
lmbda.vector()[:] = np.choose(help, lmbd_values)

V = VectorFunctionSpace(mesh, "CG", 1)
g = Expression((str(g_value[0]), str(g_value[1]), str(g_value[2])))
u_0 = Expression(("0.0", "0.0", "0.0"))
u = TrialFunction(V)
v = TestFunction(V)

bc = DirichletBC(V, u_0, boundaries, 2)

dx = Measure('dx', domain=mesh, subdomain_data=subdomains)
ds = Measure('ds', domain=mesh, subdomain_data=boundaries)


def sigma(v, mu, lmb):
    return 2.0 * mu * sym(grad(v)) + lmb * tr(sym(grad(v))) * \
        Identity(v.cell().topological_dimension())


def mean_pressure(s):
    return 1.0 / 3.0 * tr(s)


def deviatoric_stress(s):
    return s - mean_pressure(s) * Identity(v.cell().topological_dimension())


def von_Mises(v, mu, lmb):
    sigma_ = sigma(v, mu, lmb)
    dev_sigma = deviatoric_stress(sigma_)
    return sqrt(3.0 / 2 * inner(dev_sigma, dev_sigma))


a = inner(sigma(u, mu, lmbda), sym(grad(v))) * dx(0) + \
    inner(sigma(u, mu, lmbda), sym(grad(v))) * dx(1)
L = inner(g, v) * ds(1)

u = Function(V)
solve(a == L, u, bc)

displ_file = File(params['results']['displacement'])
displ_file << u

mesh.move(u)
newmesh_file = File("./results/mesh.pvd")
newmesh_file << mesh

W = TensorFunctionSpace(mesh, "CG", 1)
stress = Function(W)
stress = project(sigma(u, mu, lmbda), W)

stress_file = File(params['results']['stress'])
stress_file << stress

Q = FunctionSpace(mesh, "CG", 1)
vonMises_proj = project(von_Mises(u, mu, lmbda), Q)
vonMises_file = File("./results/vonmises.pvd")
vonMises_file << vonMises_proj
