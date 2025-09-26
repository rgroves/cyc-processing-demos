void rotateSketch() {
  // Draw a square at the center of the sketch.
  stroke(100);
  square(cx, cy, squareSize);

  /*
   * Rotate accepts radians, so when rotating by degrees use a radians() call to
   * convert the value.
   *
   * Objects are always rotated around their relative position to the origin
   * and positive numbers rotate objects in a clockwise direction.
   *
   * When used outside of a pushMatrix/popMatrix set of calls, transforms apply
   * to everything after the call.
   */

  rotate(radians(10));

  // Draw a square at the center of the rotated sketch (10 degrees).
  stroke(150);
  square(cx, cy, squareSize);

  /*
   * Transformations apply to everything that happens after and subsequent
   * calls to the function accumulates the effect.
   */
  rotate(radians(10));

  // Draw a square at the center of the rotated sketch (20 degrees).
  stroke(200);
  square(cx, cy, squareSize);
}
