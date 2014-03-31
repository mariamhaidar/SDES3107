PImage img;
PImage zoom;

color pixelColour;
void setup() {
  size(600,600);
  img = loadImage("Unknown-2.jpeg");
}

void draw() {
  image (img, 0,0, width, height);
  zoom = get (mouseX-10, mouseY-10, 20, 20);
  image(zoom, mouseX+60, mouseY, 80, 80);
  pixelColour = get (mouseX, mouseY);
  fill(pixelColour);
  ellipse(mouseX+30, mouseY, 50, 50);
}
