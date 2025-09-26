void rotateIndividualItem() {
  
  // Draw a square with a line above and below it at the center of the sketch.
  stroke(0);
  line (cx - halfSize, cy - squareSize * .75, cx + halfSize, cy - squareSize * .75);

  pushMatrix();
  translate(cx, cy);
  rotate(radians(45));
  stroke(100);
  square(0, 0, squareSize);
  popMatrix();

  stroke(0);
  line (cx - halfSize, cy + squareSize * .75, cx + halfSize, cy + squareSize * .75);
}
