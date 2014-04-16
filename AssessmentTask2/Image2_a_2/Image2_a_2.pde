import java.util.Calendar;
int NORTH = 0;
int NORTHEAST = 1; 
int EAST = 2;
int SOUTHEAST = 3;
int SOUTH = 4;
int SOUTHWEST = 5;
int WEST = 6;
int NORTHWEST= 7;

float stepSize = 1;
float diameter = 1;

int direction;
float posX, posY;
PImage img;

void setup() {
  size(700, 900);
  //img = loadImage(selectInput(""));
  img = loadImage("No. 1 (1962 - Mark Rothko).jpg");
  int x1 = (int) random(0,width);
  int y1 = (int) random(0,height);

  int x10 = round(x1 + random(-20, 20));
  int y10 = round(y1 + random(-20, 20));

  int w = 400;
  int h = 400;

  copy(x1,y1, w,h, x10,y10, w,h);
  
  background(10);
  image(img,0,0);
}
void draw() {
 
 
 for (int i=0; i<=mouseX; i++) {
    direction = (int) random(0, 8);

    if (direction == NORTH) {  
      posY -= stepSize;  
    } 
    else if (direction == NORTHEAST) {
      posX += stepSize;
      posY -= stepSize;
    } 
    else if (direction == EAST) {
      posX += stepSize;
    } 
    else if (direction == SOUTHEAST) {
      posX += stepSize;
      posY += stepSize;
    }
    else if (direction == SOUTH) {
      posY += stepSize;
    }
    else if (direction == SOUTHWEST) {
      posX -= stepSize;
      posY += stepSize;
    }
    else if (direction == WEST) {
      posX -= stepSize;
    }
    else if (direction == NORTHWEST) {
      posX -= stepSize;
      posY -= stepSize;
    }

    if (posX > width) posX = 0;
    if (posX < 0) posX = width;
    if (posY < 0) posY = height;
    if (posY > height) posY = 0;

    fill(0, 40);
    ellipse(posX+stepSize/2, posY+stepSize/2, diameter, diameter);
    
    
    
    }
  }
   
 


 
  

