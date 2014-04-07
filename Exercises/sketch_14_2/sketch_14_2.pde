size(300,300);
background(30,600,804,90);
noStroke();
            smooth();
            float radius = 2.0;
            for (int deg = 0; deg < 370*8; deg += 15) {
              float angle = radians(deg);
              float x = 90 + (cos(angle) * radius);
              float y = 50 + (sin(angle) * radius);
              ellipse(x, y, 10, 10);
              fill(40,600,70,900);
              radius = radius + 0.90;
}
