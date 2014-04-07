int x = 10;
int u = 30;
float a = -0.15;
void setup() {
  size(100,100);
  background(300,400,70,80);
  stroke(0,100);
  smooth();
  noLoop();
}

void draw() { background(204); tail(x, u, a);
}
void tail(int xpos, int units, float angle) { pushMatrix();
translate(xpos, 0);
for (int i = units; i > 0; i--) { // Count in reverse
    strokeWeight(i);
    line(10, 2, 0, 30);
    translate(0, 10);
    rotate(angle);
}
  popMatrix();
}

