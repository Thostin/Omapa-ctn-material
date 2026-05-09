size(8cm);
pair O = (0, 0);
pair A = (-2, -4);
pair B = (-1, -6);

picture p1;
picture p2;

pair X = (rotate(40)*A)*0.8;
pair Y = (rotate(40)*B)*0.8;

draw(p1, O--A--B--cycle);
draw(p1, O--X--Y--cycle);

filldraw(p1, O--A--X--cycle, lightblue + opacity(0.3));
filldraw(p1, O--B--Y--cycle, lightblue + opacity(0.3));


dot(p1, "$O$", O, N);
dot(p1, "$A$", A, W);
dot(p1, "$B$", B, SW);
dot(p1, "$X$", X, NE);
dot(p1, "$Y$", Y, E);

filldraw(p2, O--A--B--cycle, lightblue + opacity(0.3));
filldraw(p2, O--X--Y--cycle, lightblue + opacity(0.3));

draw(p2, O--A--X--cycle);
draw(p2, O--B--Y--cycle);

dot(p2, "$O$", O, N);
dot(p2, "$A$", A, W);
dot(p2, "$B$", B, SW);
dot(p2, "$X$", X, NE);
dot(p2, "$Y$", Y, E);

add(p1);
add(shift(7, 0)*p2);

