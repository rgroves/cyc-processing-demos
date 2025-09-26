

float time = 0;

void noise3D() {
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float brightness = noise(x * 0.01, y * 0.01, time) * 255;
      stroke(brightness);
      point(x, y);
    }
  }

  time += 0.02;
}
