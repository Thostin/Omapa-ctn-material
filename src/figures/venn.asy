size(6cm);
real r = 1;
real c = 0.8;

pair A = (0, 0);
pair B = (-0.5, -sqrt(3)/2);
pair C = (0.5, -sqrt(3)/2);

path C1 = circle(A, r);
path C2 = circle(B, r);
path C3 = circle(C, r);

draw(C1);
draw(C2);
draw(C3);

label("$A$", A + c * r * (-1, 1));
label("$B$", B + c * r * (-1, -1));
label("$C$", C + c * r * (1, -1));

pair O = 1/3 * (A + B + C);
real d = 2;
label("$3$", O);
label("$13$", O + d * (1/2 * (A + B) - O));
label("$7$", O + d * (1/2 * (A + C) - O));
label("$3$", O + d * (1/2 * (C + B) - O));

label("$27$", O + d * (A - O));
label("$14$", O + d * (B - O));
label("$7$", O + d * (C - O));

