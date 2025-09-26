void textRightTopAligned() {
  float x = width - 40;
  float y = 40;

  stroke(red, 150);
  strokeWeight(10);
  point(x, y);

  noStroke();
  fill(0);

  textSize(40);
  textAlign(RIGHT, TOP);
  text("#CYC25", x, y);
}
