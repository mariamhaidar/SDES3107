size(700, 100);
background(300,200,600,90);
noStroke();
fill(10);
float angle = 0.0;
for (int x = 0; x <= width; x += 9) {
  float y = 50 + (sin(angle) * 50.0);
  rect(x, y, 2, 4);
  rect(x,y,5,7);
  angle += PI/10.0;
}
