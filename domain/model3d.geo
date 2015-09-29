alpha_grad = 8;

Include "tooth.geo";

alpha = Pi*alpha_grad/180;
R = 0.5;
h = 1;
r = R - h*Tan(alpha);
Call Tooth;

Surface Loop(74) = {35, 38, 31, 52, 55, 48, 69, 72, 65, 18, 21, 14};
Volume(74) = {74};

Include "firstcrown.geo";
Delta1 = 0.2;
Thickness = 0.1;
R1 = R - Delta1*Tan(alpha);
R3 = R1 + Thickness;
h1 = h + Thickness - Delta1;
r1 = R3 - (h1 + Thickness)*Tan(alpha);

Call FirstCrown;

Surface Loop(191) = {151, 154, 147, 162, 178, 181, 174, 189, 97, 100, 93, 108, 124, 127, 120, 135, 38, 55, 72, 21};
Volume(191) = {191};

Physical Surface(2) = {100, 127, 154, 181};
Physical Surface(1) = {14, 31, 48, 65};

Physical Volume(0) = {74};
Physical Volume(1) = {191};
