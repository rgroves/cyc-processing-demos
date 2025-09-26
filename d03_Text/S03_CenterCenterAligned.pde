void textCenterCenterAligned() {
  float x = width / 2;
  float y = height / 3;

  stroke(red, 150);
  strokeWeight(10);
  point(x, y);

  noStroke();
  fill(0);

  textSize(60);
  textAlign(CENTER, CENTER);
  text("COMMIT YOUR CODE 2025", x, y);
}
