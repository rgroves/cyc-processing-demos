void blueGreenDots() {
  background(220, 20, 10);

  for (int i = 0; i < 20; i++) {
    float hue = 180 + random(-30, 30);  // Blues/greens only (150 to 210 degrees)
    float sat = random(60, 100);        // Rich colors
    float bri = random(70, 100);        // Bright colors

    fill(hue, sat, bri, 80);
    noStroke();

    float x = random(width);
    float y = random(height);
    float size = random(20, 80);

    ellipse(x, y, size, size);
  }
}
