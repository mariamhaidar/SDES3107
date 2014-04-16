import java.util.Calendar;

PImage img;

void setup() {
  size(700, 900);
  //img = loadImage(selectInput(""));
  img = loadImage("No. 1 (1962 - Mark Rothko).jpg");
  
  
  background(10);
  image(img,0,0);
}
void draw() {
  float tileCountX = mouseX/5+1;
  float tileCountY = mouseY/5+1;
  float stepX = width/tileCountX;
  float stepY = height/tileCountY;
  for (float gridY = 0; gridY < height; gridY += stepY){
    for (float gridX = 0; gridX < width; gridX += stepX){
      image(img, gridX, gridY, stepX, stepY);
    }
  }
 
  int x1 = (int) random(0,width);
  int y1 = (int) random(0,height);

  int x10 = round(x1 + random(-20, 20));
  int y10 = round(y1 + random(-20, 20));

  int w = 400;
  int h = 400;

  copy(x1,y1, w,h, x10,y10, w,h);
}

