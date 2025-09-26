void scaleIndividualItem() {
  
  // Draw a square with a line above and below it at the center of the sketch.
  stroke(0);
  line (cx - halfSize, cy - squareSize * .75, cx + halfSize, cy - squareSize * .75);

  pushMatrix();
  translate(cx, cy);
  scale(.5);
  stroke(100);
  square(0, 0, squareSize);
  popMatrix();

  stroke(0);
  line (cx - halfSize, cy + squareSize * .75, cx + halfSize, cy + squareSize * .75);
}
