DefineConstant[ lc = { 0.2, Path "Gmsh/Parameters"}];
DefineConstant[ alfa = { 18, Path "Gmsh/Parameters"}];
DefineConstant[ height = { 3, Path "Gmsh/Parameters"}];
DefineConstant[ width = { 2, Path "Gmsh/Parameters"}];
DefineConstant[ space = { 0.2, Path "Gmsh/Parameters"}];
DefineConstant[ border = { 0.4, Path "Gmsh/Parameters"}];
DefineConstant[ delta = { 0.2, Path "Gmsh/Parameters"}];
DefineConstant[ uu_width = { width - height * Tan(Pi*alfa / 180), Path "Gmsh/Parameters"}];
DefineConstant[ uuu_width = { width - (height + space) *Tan(Pi*alfa / 180), Path "Gmsh/Parameters"}];
DefineConstant[ ll_width = { width - delta * Tan(Pi*alfa / 180), Path "Gmsh/Parameters"}];
Point(1) = {0, 0, 0, lc};
Point(2) = {0, height, 0, lc};
Point(3) = {0, height + space, 0, lc};
Point(4) = {0, height + space + border, 0, lc};
Point(5) = {0, delta, 0, lc};

Point(6) = {width, 0, 0, lc};
Point(7) = {-width, 0, 0, lc};
Point(8) = {0, 0, width, lc};
Point(9) = {0, 0, -width, lc};

Point(10) = {uu_width, height, 0, lc};
Point(11) = {-uu_width, height, 0, lc};
Point(12) = {0, height, uu_width, lc};
Point(13) = {0, height, -uu_width, lc};

Point(14) = {uuu_width, height + space, 0, lc};
Point(15) = {-uuu_width, height + space, 0, lc};
Point(16) = {0, height + space, uuu_width, lc};
Point(17) = {0, height + space, -uuu_width, lc};

Point(18) = {uuu_width + border, height + space + border, 0, lc};
Point(19) = {-(uuu_width + border), height + space + border, 0, lc};
Point(20) = {0, height + space + border, uuu_width + border, lc};
Point(21) = {0, height + space + border, -(uuu_width + border), lc};

Point(22) = {ll_width + border, delta, 0, lc};
Point(23) = {-(ll_width + border), delta, 0, lc};
Point(24) = {0, delta, ll_width + border, lc};
Point(25) = {0, delta, -(ll_width + border), lc};

Point(26) = {ll_width, delta, 0, lc};
Point(27) = {-ll_width, delta, 0, lc};
Point(28) = {0, delta, ll_width, lc};
Point(29) = {0, delta, -ll_width, lc};
Circle(1) = {7, 1, 9};
Circle(2) = {9, 1, 6};
Circle(3) = {6, 1, 8};
Circle(4) = {8, 1, 7};
Circle(5) = {28, 5, 27};
Circle(6) = {27, 5, 29};
Circle(7) = {29, 5, 26};
Circle(8) = {26, 5, 28};
Circle(9) = {24, 5, 22};
Circle(10) = {22, 5, 25};
Circle(11) = {25, 5, 23};
Circle(12) = {23, 5, 24};
Circle(13) = {13, 2, 11};
Circle(14) = {12, 2, 10};
Circle(15) = {10, 2, 13};
Circle(16) = {11, 2, 12};
Circle(17) = {17, 3, 15};
Circle(19) = {15, 3, 16};
Circle(20) = {17, 3, 14};
Circle(21) = {14, 3, 16};
Circle(22) = {19, 4, 21};
Circle(23) = {18, 4, 21};
Circle(24) = {19, 4, 20};
Circle(25) = {18, 4, 20};
Line(26) = {10, 14};
Line(28) = {13, 17};
Line(30) = {11, 15};
Line(32) = {12, 16};
Line(34) = {23, 27};
Line(35) = {29, 25};
Line(36) = {28, 24};
Line(37) = {26, 22};
Line(38) = {27, 7};
Line(39) = {28, 8};
Line(40) = {26, 6};
Line(41) = {9, 29};
Line(42) = {27, 11};
Line(43) = {28, 12};
Line(44) = {26, 10};
Line(45) = {13, 29};
Line(46) = {25, 21};
Line(47) = {19, 23};
Line(48) = {24, 20};
Line(49) = {18, 22};
Coherence;
Line Loop(50) = {1, 2, 3, 4};
Plane Surface(51) = {50};
Line Loop(52) = {5, 6, 7, 8};
Line Loop(53) = {42, 16, -43, 5};
Ruled Surface(54) = {53};
Line Loop(55) = {43, 14, -44, 8};
Ruled Surface(56) = {55};
Line Loop(57) = {44, 15, 45, 7};
Ruled Surface(58) = {57};
Line Loop(59) = {45, -6, 42, -13};
Ruled Surface(60) = {59};
Line Loop(61) = {46, -22, 47, -11};
Ruled Surface(62) = {61};
Line Loop(63) = {47, 12, 48, -24};
Ruled Surface(64) = {63};
Line Loop(65) = {25, -48, 9, -49};
Ruled Surface(66) = {65};
Line Loop(67) = {23, -46, -10, -49};
Ruled Surface(68) = {67};
Plane Surface(69) = {52};
Line Loop(70) = {15, 13, 16, 14};
Plane Surface(71) = {70};
Line Loop(72) = {20, 21, -19, -17};
Plane Surface(73) = {72};
Line Loop(74) = {25, -24, 22, -23};
Plane Surface(75) = {74};
Line Loop(76) = {6, 35, 11, 34};
Plane Surface(77) = {76};
Line Loop(78) = {5, -34, 12, -36};
Plane Surface(79) = {78};
Line Loop(80) = {36, 9, -37, 8};
Plane Surface(81) = {80};
Line Loop(82) = {37, 10, -35, 7};
Plane Surface(83) = {82};
Line Loop(84) = {41, -6, 38, 1};
Ruled Surface(85) = {84};
Line Loop(86) = {38, -4, -39, 5};
Ruled Surface(87) = {86};
Line Loop(88) = {39, -3, -40, 8};
Ruled Surface(89) = {88};
Line Loop(90) = {40, -2, 41, 7};
Ruled Surface(91) = {90};
Surface Loop(92) = {51, 85, 91, 89, 87, 58, 56, 54, 60, 71};
Volume(93) = {92};
Line Loop(94) = {19, -32, -16, 30};
Ruled Surface(95) = {94};
Line Loop(96) = {21, -32, 14, 26};
Ruled Surface(97) = {96};
Line Loop(98) = {20, -26, 15, 28};
Ruled Surface(99) = {98};
Line Loop(100) = {17, -30, -13, 28};
Ruled Surface(101) = {100};
Surface Loop(102) = {83, 81, 79, 77, 62, 68, 75, 66, 64, 58, 56, 54, 60, 99, 73, 97, 95, 101};
Volume(103) = {102};
surf1 = 1;
surf2 = 2;
Physical Surface(surf1) = {75};
Physical Surface(surf2) = {51};
// Physical Surface(106) = {58, 56, 54, 60};
vol1 = 0;
vol2 = 1;
Physical Volume(vol1) = {93};
Physical Volume(vol2) = {103};
