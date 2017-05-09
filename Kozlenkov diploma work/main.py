#!/usr/bin/env python
# -*- coding=utf-8 -*-

from __future__ import print_function
from dolfin import *
import numpy as np
import sys
import os
import time

param_template_file = File('problem-template.xml')
param_to_use_file = File('problem.xml')
params = Parameters('parameters')
param_template_file >> params

pressure_options = params['pressure']['options']
angle_options = params['angle']['options']
results_paths = params['results']


def update_parameters_paths(pressure, angle):
    results_paths['destination'].update(results_paths['template'])
    for param_file in results_paths['destination']:
        path = results_paths['destination'][param_file]
        path = path.replace('{SUBFOLDER}', pressure + '_' + angle)
        results_paths['destination'][param_file] = path


def update_mesh_geometry(angle):
    geo_file = open('./domain/final.geo', 'r')
    contents = geo_file.readlines()
    geo_file.close()

    angle_string = 'DefineConstant[ alfa = { ' + \
        str(angle) + ', Path "Gmsh/Parameters"}];\n'

    contents = contents[1:]
    contents.insert(0, angle_string)

    geo_file = open('./domain/final.geo', 'w')
    contents = ''.join(contents)
    geo_file.write(contents)
    geo_file.close()


for angle in angle_options:
    update_mesh_geometry(angle_options[angle])

    os.system('python meshgen.py')

    for pressure in pressure_options:
        params['pressure']['g'].update(pressure_options[pressure])
        update_parameters_paths(pressure, angle)
        param_to_use_file << params

        os.system('python elasticity.py')
