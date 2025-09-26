void continuousRotationAndScale() {
  float angle = t % TWO_PI;
  float scaleFactor = map(t % 101, 0, 100, 0, 2);
  
  // Draw a square with a line above and below it at the center of the sketch.
  stroke(0);
  line (cx - halfSize, cy - squareSize * .75, cx + halfSize, cy - squareSize * .75);

  pushMatrix();
  translate(cx, cy);
  rotate(angle);
  scale(scaleFactor);
  stroke(100);
  square(0, 0, squareSize);
  popMatrix();

  stroke(0);
  line (cx - halfSize, cy + squareSize * .75, cx + halfSize, cy + squareSize * .75);
}
