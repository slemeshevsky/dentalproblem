import os
os.system("gmsh -3 -format msh ./domain/final.geo")
os.system("dolfin-convert ./domain/final.msh ./domain/mesh.xml")
