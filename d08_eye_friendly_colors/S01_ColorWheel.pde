void colorWheelWithDegrees() {
    translate(width/2, height/2);
  
  // Draw color wheel
  for (int angle = 0; angle < 360; angle++) {
    stroke(angle, 100, 100);
    strokeWeight(3);
    
    float x1 = cos(radians(angle)) * 80;
    float y1 = sin(radians(angle)) * 80;
    float x2 = cos(radians(angle)) * 140;
    float y2 = sin(radians(angle)) * 140;
    
    line(x1, y1, x2, y2);
  }
  
  // Draw degree markers
  fill(0, 0, 100);
  textAlign(CENTER);
  for (int deg = 0; deg < 360; deg += 30) {
    float x = cos(radians(deg)) * 160;
    float y = sin(radians(deg)) * 160;
    text(deg + "°", x, y + 5);
  }
  
  // Color labels
  textAlign(LEFT);
  fill(0, 100, 100); text("Red", 180, -20);
  fill(60, 100, 100); text("Yellow", 180, 0);
  fill(120, 100, 100); text("Green", 180, 20);
  fill(180, 100, 100); text("Cyan", 180, 40);
  fill(240, 100, 100); text("Blue", 180, 60);
  fill(300, 100, 100); text("Magenta", 180, 80);

  noLoop();
}
