void setup() { size(200, 200); smooth(); strokeWeight(3);
}
void draw() {
background(204);
// If the 'A' key is pressed draw a line
              if ((keyPressed == true) && (key == '1')) {
                line(100, 100, 40, 20);
} else ellipse(90, 90, 50, 50);
} 
