// Draw with an image sliver
            PImage lineImage;
void setup() {
size(200, 200);
// This image is 100 pixels wide, but one pixel tall 
lineImage = loadImage("Unknown.jpeg");
}
void draw() {
image(lineImage, mouseX-lineImage.width/4, mouseY);
}
            // Draw with an image that has transparency
            PImage alphaImg;

