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
  smooth();
            strokeWeight(3);
            stroke(203);
            line(0, random(500), 500, random(400));
            line(0, random(300), 300, random(800));
            //line(0, random(300), 300, random(700));
           // line(0, random(700), 700, random(500));
            //line(0, random(600), 600, random(600));
  
 
  int x1 = (int) random(0,width);
  int y1 = (int) random(0,height);

  int x10 = round(x1 + random(-50, 50));
  int y10 = round(y1 + random(-50, 50));

  int w = 400;
  int h = 400;

  copy(x1,y1, w,h, x10,y10, w,h);
  
  int x3 = (int) random(0, width);
  int y3 = 0;

  int x2 = round(x1 + random(-7, 7));
  int y2 = round(random(-5, 5));

  //int w = (int) random(65, 100);
  //int h = height;

  copy(x3,y3, w,h, x2,y2, w,h);
}

