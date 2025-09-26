void combinedMovement() {
  circle(x, y, shapeSize);

  x += xRate;
  y += yRate;

  constrain(x, 0 + halfSize, width - halfSize);
  constrain(y, 0 + halfSize, height - halfSize);

  if (x == width - halfSize || x == 0 + halfSize) {
    xRate *= -1;
  }
  
  if (y == height - halfSize || y == 0 + halfSize) {
    yRate *= -1;
  }
}
