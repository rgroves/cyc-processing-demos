void textLeftTopAligned() {
  float x = 40;
  float y = 40;

  stroke(red, 150);
  strokeWeight(10);
  point(x, y);

  noStroke();
  fill(0);
  
  textSize(40);
  textAlign(LEFT, TOP);
  text("CYC '25", x, y);
}
