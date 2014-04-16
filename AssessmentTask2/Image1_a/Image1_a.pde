
import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

int actRandomSeed = 0;
int count = 500;

void setup() {
  size(800,800); 
  cursor(ROUND);
  smooth(1);
}

void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(180,150,700,90);
  noStroke();

  float faderX = (float)mouseX/width;

  randomSeed(actRandomSeed);
  float angle = radians(360/float(count));
  for (int i=0; i<count; i++){
    // positions
    float randomX = random(100,width);  
    float randomY = random(100,height);
    float circleX = width/10 + cos(angle*i)*10;
    float circleY = height/50 + sin(angle*i)*10;

    float x = lerp(randomX,circleX, faderX);
    float y = lerp(randomY,circleY, faderX);

    fill(700,170,469);
    rect(x,y,30,11);
   
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


