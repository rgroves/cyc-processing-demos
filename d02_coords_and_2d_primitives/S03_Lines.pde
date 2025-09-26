void drawLines() {
  /*============================================================================
   ** LINE
   **==========================================================================*/
  // For reference, draw a grid with 50 pixel-wide cells across the canvas.

  // Sets the stroke color and alpha for anything drawn after this point
  stroke(100);

  // Sets the stroke weight for anything drawn after this point
  strokeWeight(1);
  
  // Note: The stroke & strokeWeight settings persist until next stroke or strokeWeight call.


  int cellSize = 50;


  for (int i = 0; i <= width; i += cellSize) {

    // Draw the vertical lines of the grid.
    line(i, 0, i, height);

    if (i < height + cellSize) {

      // Draw the horizontal lines of the grid.
      line(0, i, width, i);
    }
  }
}
