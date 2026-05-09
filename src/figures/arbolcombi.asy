size(8.5cm);

// Positions
pair A = (0,0);

pair B1 = (-2,-2);
pair B2 = (0,-2);
pair B3 = (2,-2);

real c = 1.5;
pair displaz = (0, 0.2);
pair C11 = c * (-2.5,-4 / c), C12 = c * (-1.5,-4 / c);
pair C21 = c * (-0.5,-4 / c), C22 = c * (0.5,-4 / c);
pair C31 = c * (1.5,-4 / c), C32 = c * (2.5,-4 / c);

// Root
label("$\\{1,2,3\\}$", A + (0, 0.2));

// First level
label("$1$", B1);
label("$2$", B2);
label("$3$", B3);

draw(A--(B1 + (0, 0.2))); draw(A--(B2 + (0, 0.2))); draw(A--(B3 + (0, 0.2)));

// Second level
label("$2$", C11); label("$3$", C12);
label("$1$", C21); label("$3$", C22);
label("$1$", C31); label("$2$", C32);

draw(B1 - displaz--C11 + displaz); draw(B1 - displaz--C12 + displaz);
draw(B2 - displaz--C21 + displaz); draw(B2 - displaz--C22 + displaz);
draw(B3 - displaz--C31 + displaz); draw(B3 - displaz--C32 + displaz);

// Leaves (permutations)
label("$(1,2,3)$", C11 + (0,-1));
label("$(1,3,2)$", C12 + (0,-1));

label("$(2,1,3)$", C21 + (0,-1));
label("$(2,3,1)$", C22 + (0,-1));

label("$(3,1,2)$", C31 + (0,-1));
label("$(3,2,1)$", C32 + (0,-1));
