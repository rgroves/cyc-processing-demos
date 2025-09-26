float t = 0;

void randomVsNoise() {
  strokeWeight(5);
  background(0);

  // Random line (red)
  stroke(255, 0, 0);
  for (int x = 0; x < width; x+=25) {
    float y = random(height);
    point(x, y);
  }

  // Noise line (green)
  stroke(0, 255, 0);
  for (int x = 0; x < width; x+=10) {
    float y = noise(x * 0.01 + t) * height;
    point(x, y);
  }

  t += 0.01;
}
