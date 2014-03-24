
void setup() 
{ size(500, 500); 
smooth();
}
void draw() { 
  background(400); 
  fill(300,200,100);
  if (mousePressed == true) {
    cursor(HAND);
  } else {
    cursor(MOVE);
  }
  ellipse(mouseX, 0, mouseX, height);
  ellipse(0, mouseY, height, mouseY);
  
}
