int numFrames = 15; // The number of animation frames
int frame = 0; // The frame to display
PImage[] images = new PImage[numFrames]; //Image array
void setup() {
size(100, 100);
frameRate(30); // Maximum 30 frames per second 
images[0] = loadImage("00.jpg"); 
images[1] = loadImage("01.jpg"); 
images[2] = loadImage("02.jpg"); 
images[3] = loadImage("03.jpg"); 
images[4] = loadImage("04.jpg"); 
images[5] = loadImage("05.jpg"); 
images[6] = loadImage("06.jpg"); 
images[7] = loadImage("07.jpg"); 
images[8] = loadImage("08.jpg"); 
images[9] = loadImage("09.jpg"); 
images[10] = loadImage("10.jpg"); 
images[11] = loadImage("11.jpg");
images[12] = loadImage("12.jpg");
images[13] = loadImage("13.jpg");
images[14] = loadImage("14.jpg");



}
void draw() {
frame++;
if (frame == numFrames) {
frame = 0;
}
image(images[frame], 0, 0);
}
