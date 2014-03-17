smooth();
fill(700);
randomSeed(0);
strokeWeight(10);
stroke(0, 60);
for (int i = 0; i < 260; i += 20) {
  float begin = radians(i);
  float end = begin + HALF_PI;
  arc(77, 47, i, i, begin, end);
}
