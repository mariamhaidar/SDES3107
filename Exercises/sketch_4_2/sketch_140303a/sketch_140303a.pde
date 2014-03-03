//This program draws a square 100 pixel window,
//gives it a black background, draws two
//ellipses, and prints words to the console.
size(500,600);

int x = 50;
float y=3.5;



println(x);

background(20,100,220);
//ellipse(width/2,height/2,30,100);
fill(100,220);

//float middleX = width/2;
//float middleY = height/2;
//
//ellipse(width/2,height/2,30,30);
//stroke(255,0,0);


//line(20,70,85,60);

//float x=10;
ellipse(x-50, x-50, x/6, x/6);

line(20, 0, 20, height);

ellipse(x, x, x/3, x/3);
line(50, 0, 50, height);
ellipse(x+50, x+50, x/2, x/2);

strokeWeight (3);
stroke(255,0,0);
line(30, 0, 30, height);




size(300, 300);
for (int i = 30; i < 200; i += 30) {
  line(i, 5, i, 350);
 ellipse(x+60, x+60, x/-5, x/-5);
}



noFill();
            for (int d = 150; d > 0; d -= 10) {
              ellipse(70, 70, d, d);
            }
            
            
            
