#!/usr/bin/env python
# -*- coding=utf-8 -*-

import os, sys

try:
	domainfolder = sys.argv[1]
	meshfolder = sys.argv[2]
except:
	print 'Usage: %s domainfolder meshfolder' % (sys.argv[0])
	print 'By defaul domainfolder = %s, meshfolder = %s' %(('./domain', './mesh'))
	domainfolder = './domain'
	meshfolder = './mesh'

#TODO: Разобраться почему плохо генерируется сетка
os.system("gmsh -3 -format mesh '{0}'/mesh.geo".format(domainfolder))
os.system("gmsh -3 -format msh '{0}'/mesh.geo".format(domainfolder))	
os.system("python mesh2xml.py '{0}'/mesh.mesh '{1}'/model3d.xml".format(domainfolder,meshfolder))
os.system("dolfin-convert '{0}'/mesh.msh '{1}'/mesh.xml".format(domainfolder,meshfolder))
#os.system("rm '{0}'/mesh.mesh".format(domainfolder))



