void textCenterBaselineAligned() {
  float x = width / 2;
  float y = height * 0.66;

  stroke(red, 150);
  strokeWeight(10);
  point(x, y);

  noStroke();
  fill(0);

  textSize(30);
  textAlign(CENTER, BASELINE);  // NOTE: BASELINE is the defaultm if 2nd parameter not specified.
  text("COMMIT YOUR CODE", x, y);
}
