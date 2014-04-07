void setup() { 
  size(200, 200); 
  background(30,6,70,90);
  noStroke(); 
  fill(255, 51);
}
void draw() { } // Empty draw() keeps the program running
            void keyPressed() {
              int y = key - 32;
              ellipse(60,100,60,100);
              rect(0, y, 100, 4);
}
