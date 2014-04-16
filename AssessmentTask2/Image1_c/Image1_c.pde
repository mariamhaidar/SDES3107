import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

int actRandomSeed = 20;
int count = 900;

void setup() {
  size(800,800); 
  cursor(CROSS);
  smooth();
}

void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  colorMode(HSB, 360,200,100);
  rectMode(CROSS);
  background(mouseY,150,700,90);
  
  fill(100,400,300,20);
            for (int d = 800; d > 10; d -= 90) {
              ellipse(150, 150, d, d);
              ellipse(700, 150, d, d);
              ellipse(100, 700, d, d);
              ellipse(750, 750, d, d);
            }
  
  //fill(360-mouseY/2, 100,100);
  //ellipse(400,400, mouseX+3, mouseX+3);
  stroke(0,100,154);
  strokeWeight(5);
randomSeed(actRandomSeed);
beginShape();
for (int x = 20; x < width; x+=20) {
    float y = random(50,height);   
    vertex(x,y);
  }
  endShape();
//dots
stroke(10,40,60);
fill(10,40,50,60);
 randomSeed(actRandomSeed);
  for (int x = 0; x < width; x+=10) {
    float y = random(0,height);   
    ellipse(x,y,10,10);
  }
  
 
  float faderX = (float)mouseX/width;

  randomSeed(actRandomSeed);
  float angle = radians(360/float(count));
  for (int i=0; i<count; i++){
    // positions
    float randomX = random(0,width);  
    float randomY = random(0,height);
    float circleX = width/2 + cos(angle*i)*300;
    float circleY = height/2 + sin(angle*i)*300;

    float x = lerp(randomX,circleX, faderX);
    float y = lerp(randomY,circleY, faderX);

    fill(20,300,150,600);
    tint(300,40,200,400);
    //rect(x,y,30,11);
    //fill(300,60,60,700);
    //ellipse(x,y,10,10);
    
   
  }

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void mouseReleased() {
  actRandomSeed = (int) random(20000);
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


