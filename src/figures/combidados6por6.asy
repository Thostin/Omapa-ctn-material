size(8cm);

for(int i = 1; i <= 6; ++i){
    for(int j = 1; j <= 6; ++j){
        label("$(" + string(i) + ", " + string(j) + ")$", (2 * i, 2 * j));
      }
  }

