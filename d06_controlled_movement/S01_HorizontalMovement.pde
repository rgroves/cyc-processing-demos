void horizontalMovement() {
  circle(x, y, shapeSize);

  x += xRate;

  constrain(x, 0 + halfSize, width - halfSize);

  if (x == width - halfSize || x == 0 + halfSize) {
    xRate *= -1;
  }
}
