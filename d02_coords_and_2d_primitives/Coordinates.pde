/*
  ** Coordinates of a Processing sketch canvas:
 **
 **   - The x-axis runs horizontally
 **     - Starts at 0 on the left edge
 **     - Ends at [width] on the right edge (in this demo width=800 based on size() in setup)
 **
 **   - The y-axis runs vertically
 **     - Starts at 0 on the top edge
 **     - Ends at [height] on the bottom edge (in this demo height=600 based on size() in setup)
 */


// Will be assigned sketch's center x,y coordinates
float cx, cy;  


void setCenterCoords() {
  /*
  ** The width and height globals are automatically made available.
   ** They are initialized by the size() call.
   ** Assign center x,y coordinates to variables for easier/efficient reference.
   */
  cx = width / 2;
  cy = height / 2;
}
