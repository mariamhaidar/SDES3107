PFont f;
void setup() {
  size(200, 200);
  f = createFont("ACaslonPro-Semibold-48.vlw", 24);
  textFont(f);
  textAlign(CENTER);
  fill(0);
}
void draw() {
  background(204,59,87);
  text("word", width-mouseX, height-mouseY);
  fill(74,68,89);
  }
