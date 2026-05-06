include "figures/evan_asy.asy";

size(8cm);

int n = 4; // just for spacing, not values

// draw grid
for(int i = 0; i <= n; ++i){
  draw((0,i)--(n,i), gray);
  draw((i,0)--(i,n), gray);
}

// first row
label("$1$", (0.5, n-0.5));
label("$2$", (1.5, n-0.5));
label("$\cdots$", (2.5, n-0.5));
label("$n$", (n-0.5, n-0.5));

// second row
label("$n+1$", (0.5, n-1.5));
label("$n+2$", (1.5, n-1.5));
label("$\cdots$", (2.5, n-1.5));
label("$2n$", (n-0.5, n-1.5));

// vertical dots (left column)
label("$\vdots$", (0.5, 1.5));
label("$\vdots$", (1.5, 1.5));
label("$\vdots$", (3.5, 1.5));

// diagonal dots
label("$\ddots$", (2.5, 1.5));

// bottom row
label("$n^2-n+1$", (0.5, 0.5));
label("$n^2-n+2$", (1.5, 0.5));
label("$\cdots$", (2.5, 0.5));
label("$n^2$", (n-0.5, 0.5));

