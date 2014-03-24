float gray = 0;
void setup() {
   size(100, 100);
}
void draw() {
   background(gray);
}
void mousePressed(){
  rect(mouseX, mouseY, 33, 33);
gray += 20; }           
