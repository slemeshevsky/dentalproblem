Function Tooth :
p1 = newp; Point(p1) = {0, 0, 0};
p2 = newp; Point(p2) = {R, 0, 0};
p3 = newp; Point(p3) = {r, 0, h};
p4 = newp; Point(p4) = {0, 0, h};

l1 = newl; Line(l1) = {p1, p2};
l2 = newl; Line(l2) = {p2, p3};
l3 = newl; Line(l3) = {p3, p4};
l4 = newl; Line(l4) = {p4, p1};

ll1 = newll; Line Loop(ll1) = {l1, l2, l3, l4};
s1 = news; Ruled Surface(s1) = {ll1};

v1[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{s1}; };
v2[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{v1[0]}; };
v3[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{v2[0]}; };
v4[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{v3[0]}; };
Return
