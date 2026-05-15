import graph;
size(8cm);

xaxis("$A$", 0, 4.9, ticks=Ticks(Step=1), arrow=Arrow());
yaxis("$B$", 0, 3.6, ticks=Ticks(Step=1, beginlabel=false), arrow=Arrow());


filldraw(box((1, 3), (2, 2)), lightgray);
label("$A \times B$", (1.5, 2.5));
