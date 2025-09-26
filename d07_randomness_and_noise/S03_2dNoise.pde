void noise2D() {
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float brightness = noise(x * 0.01, y * 0.01) * 255;
      stroke(brightness);
      point(x, y);
    }
  }

  noLoop();
}
