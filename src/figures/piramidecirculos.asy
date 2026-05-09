size(6cm);
for(real i = 0; i < 5; ++i){
    for(real j = -0.5 * i; j <= 0.5*i; ++j){
        draw(circle((j, -i * sqrt(3) * 0.5), 0.5));
      }
  }
