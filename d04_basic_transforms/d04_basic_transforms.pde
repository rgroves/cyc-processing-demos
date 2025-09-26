/*******************************************************************************
 ** Demo #01
 **
 ** Blank template for a dynamic/interactive sketch
 *******************************************************************************/
float cx, cy;
float squareSize = 200;
float halfSize = squareSize / 2;
float t = 0;

void setup() {
  size(800, 600);
  cx = width / 2;
  cy = height / 2;

  background(255);
  strokeWeight(5);
  
  rectMode(CENTER);
}

void draw() {
  rotateSketch();
  
  //rotateIndividualItem();
  
  //scaleIndividualItem();
  
  //continuousRotationAndScale();
  
  t += 1;  // Vibe on this
}
