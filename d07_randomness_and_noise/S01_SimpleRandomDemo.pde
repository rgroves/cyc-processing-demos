void simpleRandomDemo() {
  // Technique to make previously drawn items fade out, by drawing a over the
  // entire canvas using a rect that is the same color as the background but has
  // a low opacity.
  fill(0, 10);
  rect(0, 0, width, height);

  // Draw a random circle every frame
  float x = random(width);
  float y = random(height);
  float size = random(10, 50);

  fill(random(255), random(255), random(255));
  ellipse(x, y, size, size);
}
