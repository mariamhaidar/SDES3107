// Use rotate() to move a shape
void setup() { size(200, 200); strokeWeight(8); smooth();
}
void draw() {
background(10,200,50,10);
float angle = map(mouseX, 0, width, 0, TWO_PI); translate(50, 50);
rotate(angle);
line(0, 0, 40, 0);
ellipse(50,50,50,50);
rect(100,50,100,50);
}


