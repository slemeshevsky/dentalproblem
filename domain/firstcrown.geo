Function FirstCrown :
	p5 = newp; Point(p5) = {R1, 0, Delta1};
	p6 = newp; Point(p6) = {R3, 0, Delta1};
	p7 = newp; Point(p7) = {r1, 0, h1 + Delta1};
	p8 = newp; Point(p8) = {0, 0, h1 + Delta1};
	p9 = newp; Point(p9) = {0, 0, h};
	p10 = newp; Point(p10) = {r, 0, h};

	l5 = newl; Line(l5) = {p5, p6};
	l6 = newl; Line(l6) = {p6, p7};
	l7 = newl; Line(l7) = {p7, p8};
	l8 = newl; Line(l8) = {p8, p9};
	l9 = newl; Line(l9) = {p9, p10};
	l10 = newl; Line(l10) = {p10, p5};

	ll2 = newll; Line Loop(ll2) = {l5, l6, l7, l8, l9, l10};
	s2 = news; Plane Surface(s2) = {ll2};

	v5[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{s2}; };
	v6[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{v5[0]}; };
	v7[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{v6[0]}; };
	v8[] = Extrude{{0, 0, 1}, {0, 0, 0}, Pi/2}{ Surface{v7[0]}; };
Return
