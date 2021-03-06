cl__1 = 1e+22;
Point(1) = {0, 0, 0, 1e+22};
Point(2) = {0.5, 0, 0, 1e+22};
Point(3) = {0.3594591652976086, 0, 1, 1e+22};
Point(4) = {0, 0, 1, 1e+22};
Point(6) = {3.061616997868383e-17, 0.5, 0, 1e+22};
Point(10) = {2.201052581029478e-17, 0.3594591652976086, 1, 1e+22};
Point(12) = {-0.5, 6.123233995736766e-17, 0, 1e+22};
Point(16) = {-0.3594591652976086, 4.402105162058957e-17, 1, 1e+22};
Point(18) = {-9.184850993605148e-17, -0.5, 0, 1e+22};
Point(22) = {-6.603157743088436e-17, -0.3594591652976086, 1, 1e+22};
Point(23) = {0.4718918330595217, 0, 0.2, 1e+22};
Point(24) = {0.5718918330595217, 0, 0.2, 1e+22};
Point(25) = {0.4313509983571303, 0, 1.1, 1e+22};
Point(26) = {0, 0, 1.1, 1e+22};
Point(29) = {2.889504114500602e-17, 0.4718918330595217, 0.2, 1e+22};
Point(30) = {3.501827514074279e-17, 0.5718918330595217, 0.2, 1e+22};
Point(34) = {2.641263097235374e-17, 0.4313509983571303, 1.1, 1e+22};
Point(58) = {0, 0, 0.2, 1e+22};
Point(59) = {-0.4718918330595217, 5.779008229001204e-17, 0.2, 1e+22};
Point(60) = {-0.5718918330595217, 7.003655028148558e-17, 0.2, 1e+22};
Point(64) = {-0.4313509983571303, 5.282526194470748e-17, 1.1, 1e+22};
Point(65) = {-8.668512343501806e-17, -0.4718918330595217, 0.2, 1e+22};
Point(66) = {-1.050548254222284e-16, -0.5718918330595217, 0.2, 1e+22};
Point(70) = {-7.923789291706122e-17, -0.4313509983571303, 1.1, 1e+22};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line(8) = {1, 6};
Line(9) = {6, 10};
Line(10) = {10, 4};
Circle(13) = {2, 1, 6};
Circle(17) = {3, 4, 10};
Line(25) = {1, 12};
Line(26) = {12, 16};
Line(27) = {16, 4};
Circle(30) = {6, 1, 12};
Circle(34) = {10, 4, 16};
Line(42) = {1, 18};
Line(43) = {18, 22};
Line(44) = {22, 4};
Circle(47) = {12, 1, 18};
Circle(51) = {16, 4, 22};
Circle(64) = {18, 1, 2};
Circle(68) = {22, 4, 3};
Line(75) = {23, 24};
Line(76) = {24, 25};
Line(77) = {25, 26};
Line(78) = {26, 4};
Line(80) = {3, 23};
Line(84) = {29, 30};
Line(85) = {30, 34};
Line(86) = {34, 26};
Line(89) = {10, 29};
Circle(91) = {23, 58, 29};
Circle(92) = {24, 58, 30};
Circle(96) = {25, 26, 34};
Line(111) = {59, 60};
Line(112) = {60, 64};
Line(113) = {64, 26};
Line(116) = {16, 59};
Circle(118) = {29, 58, 59};
Circle(119) = {30, 58, 60};
Circle(123) = {34, 26, 64};
Line(138) = {65, 66};
Line(139) = {66, 70};
Line(140) = {70, 26};
Line(143) = {22, 65};
Circle(145) = {59, 58, 65};
Circle(146) = {60, 58, 66};
Circle(150) = {64, 26, 70};
Circle(172) = {65, 58, 23};
Circle(173) = {66, 58, 24};
Circle(177) = {70, 26, 25};
Line Loop(6) = {1, 2, 3, 4};
Ruled Surface(6) = {6};
Line Loop(14) = {1, 13, -8};
Ruled Surface(14) = {14};
Line Loop(18) = {2, 17, -9, -13};
Ruled Surface(18) = {18};
Line Loop(21) = {-10, -17, 3};
Ruled Surface(21) = {21};
Line Loop(23) = {8, 9, 10, 4};
Ruled Surface(23) = {23};
Line Loop(31) = {8, 30, -25};
Ruled Surface(31) = {31};
Line Loop(35) = {9, 34, -26, -30};
Ruled Surface(35) = {35};
Line Loop(38) = {-27, -34, 10};
Ruled Surface(38) = {38};
Line Loop(40) = {25, 26, 27, 4};
Ruled Surface(40) = {40};
Line Loop(48) = {25, 47, -42};
Ruled Surface(48) = {48};
Line Loop(52) = {26, 51, -43, -47};
Ruled Surface(52) = {52};
Line Loop(55) = {-44, -51, 27};
Ruled Surface(55) = {55};
Line Loop(57) = {42, 43, 44, 4};
Ruled Surface(57) = {57};
Line Loop(65) = {42, 64, -1};
Ruled Surface(65) = {65};
Line Loop(69) = {43, 68, -2, -64};
Ruled Surface(69) = {69};
Line Loop(72) = {-3, -68, 44};
Ruled Surface(72) = {72};
Line Loop(82) = {75, 76, 77, 78, -3, 80};
Plane Surface(82) = {82};
Line Loop(93) = {75, 92, -84, -91};
Ruled Surface(93) = {93};
Line Loop(97) = {76, 96, -85, -92};
Ruled Surface(97) = {97};
Line Loop(100) = {-86, -96, 77};
Ruled Surface(100) = {100};
Line Loop(108) = {80, 91, -89, -17};
Ruled Surface(108) = {108};
Line Loop(109) = {84, 85, 86, 78, -10, 89};
Plane Surface(109) = {109};
Line Loop(120) = {84, 119, -111, -118};
Ruled Surface(120) = {120};
Line Loop(124) = {85, 123, -112, -119};
Ruled Surface(124) = {124};
Line Loop(127) = {-113, -123, 86};
Ruled Surface(127) = {127};
Line Loop(135) = {89, 118, -116, -34};
Ruled Surface(135) = {135};
Line Loop(136) = {111, 112, 113, 78, -27, 116};
Plane Surface(136) = {136};
Line Loop(147) = {111, 146, -138, -145};
Ruled Surface(147) = {147};
Line Loop(151) = {112, 150, -139, -146};
Ruled Surface(151) = {151};
Line Loop(154) = {-140, -150, 113};
Ruled Surface(154) = {154};
Line Loop(162) = {116, 145, -143, -51};
Ruled Surface(162) = {162};
Line Loop(163) = {138, 139, 140, 78, -44, 143};
Plane Surface(163) = {163};
Line Loop(174) = {138, 173, -75, -172};
Ruled Surface(174) = {174};
Line Loop(178) = {139, 177, -76, -173};
Ruled Surface(178) = {178};
Line Loop(181) = {-77, -177, 140};
Ruled Surface(181) = {181};
Line Loop(189) = {143, 172, -80, -68};
Ruled Surface(189) = {189};
Surface Loop(1) = {6, 23, 14, 18, 21};
Volume(1) = {1};
Surface Loop(2) = {23, 40, 31, 35, 38};
Volume(2) = {2};
Surface Loop(3) = {40, 57, 48, 52, 55};
Volume(3) = {3};
Surface Loop(4) = {57, 6, 65, 69, 72};
Volume(4) = {4};
Surface Loop(74) = {35, 38, 31, 52, 55, 48, 69, 72, 65, 18, 21, 14};
Volume(74) = {74};
Surface Loop(75) = {82, 109, 93, 97, 100, 21, 108};
Volume(75) = {75};
Surface Loop(76) = {109, 136, 120, 124, 127, 38, 135};
Volume(76) = {76};
Surface Loop(77) = {136, 163, 147, 151, 154, 55, 162};
Volume(77) = {77};
Surface Loop(78) = {163, 82, 174, 178, 181, 72, 189};
Volume(78) = {78};
Surface Loop(191) = {151, 154, 147, 162, 178, 181, 174, 189, 97, 100, 93, 108, 124, 127, 120, 135, 38, 55, 72, 21};
Volume(191) = {191};
v1 = 1;
Physical Surface(v1) = {14, 31, 48, 65};
v2 = 2;
Physical Surface(v2) = {100, 127, 154, 181};
r1 = 0;
Physical Volume(r1) = {74};
v1 = 1;
Physical Volume(v1) = {191};
