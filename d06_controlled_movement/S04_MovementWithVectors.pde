PVector pos = new PVector(400, 300);
PVector vel = new PVector();
PVector acc = new PVector();

void vectorMovement() {
  circle(pos.x, pos.y, shapeSize);
  
  vel.add(acc);
  pos.add(vel);
  acc.mult(0);
  
  if (pos.x > width + halfSize) {
    pos.x = 0;
  }
  if (pos.x < 0 - halfSize) {
    pos.x = width;
  }
  
  if (pos.y > height + halfSize) {
   pos.y = 0;
  }
  if (pos.y < 0 - halfSize) {
    pos.y = height;
  }
}

void keyPressed() {
  // For those familiar with Java, the values for UP and DOWN are simply shorter 
  // versions of Java's KeyEvent.VK_UP and KeyEvent.VK_DOWN. Other keyCode values 
  // can be found in the Java KeyEvent reference.
  // For more detail: http://localhost:8053/reference/keyCode.html
  switch (keyCode) {
    case UP:
      acc.x = 0;
      acc.y = -.5;
      break;
    case DOWN:
      acc.x = 0;
      acc.y = .5;
      break;
    case LEFT:
      acc.x = -.5;
      acc.y = 0;
      break;
    case RIGHT:
      acc.x = .5;
      acc.y = 0;
      break;
  }
}
