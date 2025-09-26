void drawPoints() {
  /*============================================================================
   ** POINT
   **============================================================================
   ** Draw three red points at:
   **   * Near Top Left     (x=25,y=25)
   **   * Center            (x=400,y=300)
   **   * Near Bottom Right (x=775,y=575)
   */
  strokeWeight(10);
  stroke(red);
  point(25, 25);
  point(cx, cy);
  point(width - 25, height - 25);
}
