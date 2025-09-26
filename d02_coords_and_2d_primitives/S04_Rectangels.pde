void drawRectangles () {

  /*============================================================================
   ** RECTANGLE
   **===========================================================================
   ** CORNER rectMode makes the x,y values passed to
   ** rect() and square() the top left corner of the shape.
   ** This is the default rectMode.
   */
  rectMode(CORNER);
  
  // Sets the fill color and alpha for anything drawn after this point
  fill(black, 50);
  
  // Note: The fill & noFill settings persist until next fill or noFill call.

  
  stroke(purple, 100);
  strokeWeight(5);
  rect(cx, cy, 50, 150);

  // CENTER mode makes the x,y values passed to
  // rect() and square() the center of the shape.
  rectMode(CENTER);
  noFill();
  stroke(blue, 100);
  rect(cx, cy, 50, 150);
  
  
  /*============================================================================
   ** SQUARE [can draw a square with a rect() but square() has less args]
   **=========================================================================*/
  // rectMode applies to square() as well.
  // The previous rectMode set will be used (in this case center).
  noFill();
  stroke(green, 255);
  strokeWeight(10);
  square(cx+150, cy, 100);
}
