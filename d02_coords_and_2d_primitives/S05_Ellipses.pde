void drawEllipses() {

  /*============================================================================
   ** ELLIPSE
   **===========================================================================
   ** CENTER ellipseMode makes the x,y values passed to
   ** ellipse(), circle(), and arc() the center of the shape.
   ** This is the default ellipseMode.
   */
  ellipseMode(CENTER);
  stroke(black);
  strokeWeight(5);
  ellipse(100, cy, 50, 100);

  /*
   ** CORNER ellipseMode makes the x,y values passed to
   ** ellipse(), circle(), and arc() the top left corner of the shape.
   */
  ellipseMode(CORNER);
  stroke(orange);
  ellipse(100, cy, 50, 100);

  /*============================================================================
   ** CIRCLE [can draw a circle with a ellipse() but circle() has less args]
   **=========================================================================*/
  ellipseMode(CENTER);
  stroke(gray);
  circle(250, cy, 100);
}
