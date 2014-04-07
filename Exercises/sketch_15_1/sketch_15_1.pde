size(500,500);
background(116, 193, 206);
fill(242, 204, 47, 160);
int x = 250;
int y = 250;
for (int i =0; i < 100; i++) {
  x = round (random(width));
  y = round (random(height));


  ellipse(x,y,90,100);
}
