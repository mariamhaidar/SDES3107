void setup() { 
  size(300, 300); 
  background(40,600,700,80);
  smooth(); 
  noLoop();
}
void draw() {
drawX(100); // Run first drawX()
drawX(4.4); // Run second drawX()
drawX(0, 6, 44, 70, 80); // Run third drawX()
}

   // Draw an X with the gray value set by the parameter
            void drawX(int gray) {
              stroke(gray);
              strokeWeight(10);
              line(0, 10, 80, 80);
              line(60, 5, 0, 65);
}
            // Draw a black X with the thickness set by the parameter
            void drawX(float weight) {
              stroke(0);
              strokeWeight(weight);
              line(0, 5, 60, 65);
              line(60, 5, 0, 65);
              ellipse(100,200,40,79);
              
}
// Draws an X with the gray value, thickness,
// position, and size set by the parameters
void drawX(int gray, int weight, int x, int y, int s) {
              stroke(gray);
              strokeWeight(weight);
              line(x, y, x+s, y+s);
              line(x+s, y, x, y+s);
              
}
