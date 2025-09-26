/*******************************************************************************
** Demo #06
**
** Controlled movement 
*******************************************************************************/
float x, y;
float shapeSize = 100;
float halfSize = shapeSize / 2;
float xRate = 5;
float yRate = 5;


void setup() {
  size(800, 600);
  background(255);
  stroke(0);
  strokeWeight(3);
  fill(255);
  
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(255);
  
  horizontalMovement();
  
  //verticalMovement();
  
  //combinedMovement();
  
  //vectorMovement();
}
