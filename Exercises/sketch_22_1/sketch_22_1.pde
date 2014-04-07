float c = 40.0;
void setup() { size(200, 200); smooth(); noLoop();
}
void draw() { arch(c);
}
void arch(float curvature) {
  float y = 150.0;
  strokeWeight(9);
  noFill();
  beginShape();
  vertex(30.0, y);
  bezierVertex(30.0, y-curvature, 50.0, 55.0, 50.0, 55.0);
  bezierVertex(100.0, 66.0, 105.0, y-curvature, 105.0, y);
  endShape();
}
