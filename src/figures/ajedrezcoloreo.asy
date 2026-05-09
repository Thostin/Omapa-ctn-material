size(6cm);

int p;
for(int i = 0; i < 8; ++i){
    for(int j = 0; j < 8; ++j){
        p = (i + j) % 2;
        if(i + j != 0 && i + j != 14)
        // (100*((i + j) % 2))
        filldraw((i, j)--(i + 1, j)--(i + 1, j + 1)--(i, j + 1)--cycle, rgb(1.0 - p * 0.7, 1.0 - p * 0.7, 1.0 - p * 0.7));
      }
}
