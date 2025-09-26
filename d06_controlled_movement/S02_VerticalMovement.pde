void verticalMovement() {
  circle(x, y, shapeSize);

  y += yRate;

  constrain(y, 0 + halfSize, height - halfSize);

  if (y == height - halfSize || y == 0 + halfSize) {
    yRate *= -1;
  }
}
