include "figures/evan_asy.asy";

size(6cm);
string[] terms = {"$1$", "$2$", "$\dots$", "$(n - 1)$", "$n$"};

real[] x = {0, 1.5, 3.0, 4.7, 6.5};

for (int i = 0; i < terms.length; ++i) {
  label(terms[i], (x[i], 0));
}

label("$+$", (0.75, 0));
label("$+$", (2.25, 0));
label("$+$", (3.5, 0));
label("$+$", (5.9, 0));

path curva1 = (0, 0.2) .. controls (2, 1.2) and (x[4] - 2, 1.2) .. (x[4], 0.2);
draw(curva1, red, arrow=Arrows());
path curva2 = (x[1] + 0.1, -0.2) .. controls (3, -0.8) and (x[4] - 3, -0.8) .. (x[3], -0.2);
draw(curva2, blue, arrow=Arrows());

label("$n + 1$", (x[4]/2, 1.3));
label("$n + 1$", (x[4]/2, -1));
