// Draw a line from the top of the display window to
// points on a curve y = x^4 from x in range -1.0 to 1.0 
size(300,300);
background(300,400,70,800);
for (int x = 5; x < 200; x += 4) {
              float n = map(x, 10, 150, 5, 1);
              float p = pow(n, 4);
              float ypos = lerp(60, 100, p);
              line(x, 0, x, ypos);
              line(x,10, x, ypos);
}
