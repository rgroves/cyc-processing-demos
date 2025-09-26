void drawArc() {
  /*============================================================================
   ** ARC
   ** When drawing arcs the start and stop angles must be specified as radians
   **=========================================================================*/
  stroke(blue);
  float ellipseSize = 400;
  arc(cx, cy, ellipseSize, ellipseSize, 0, QUARTER_PI);
  arc(cx, cy, ellipseSize, ellipseSize, HALF_PI, PI);
  arc(cx, cy, ellipseSize, ellipseSize, radians(225), radians(315));

  //strokeWeight(1);
  //stroke(black);
  //circle(cx, cy, ellipseSize);
}
