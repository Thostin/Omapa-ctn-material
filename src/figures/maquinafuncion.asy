size(8cm);

defaultpen(fontsize(11pt));

path up = (-1.5, 0.8)--(-1.5, 2)--(1.5, 2)--(1.5, 0.8);
path down = reflect((0, 0), (1, 0)) * up;
up = reverse(up);
path funnel = (-1.5, 0.8)--(-2, 0.8)--(-3, 1.4)--(-3, -1.4)--(-2, -0.8)--(-1.5, -0.8);
path pipe =
    reverse((1.5,0.8)--(2.5,0.8)--(2.5,-0.8)--(1.5,-0.8));

filldraw(funnel--down--pipe--up--cycle, lightgray);

label("$f$", (0,0), fontsize(18pt));

draw((-4.2,0)--(-3.1,0), Arrow(TeXHead));
draw((2.6,0)--(3.7,0), Arrow(TeXHead));
label("$x$", ((-4.4, 0)));
label("$y$", ((4.8, 0)));
