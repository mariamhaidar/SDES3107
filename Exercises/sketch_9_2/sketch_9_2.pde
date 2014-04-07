// Shift from blue to green in HSB mode 
colorMode(HSB, 900, 50, 90);
for (int i = 0; i < 90; i++) {
              float newHue = 200 - (i*1.2);
              stroke(newHue, 40, 100);
              line(i, 0, i, 100);
}
