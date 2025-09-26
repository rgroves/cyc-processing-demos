/*******************************************************************************
** Extra #01
**
** Sine and Cosine intuition for motion around a circular path
*******************************************************************************/
float angle = 0;

void setup() {
  size(800, 600);
  
  background(0);
  textSize(24);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  
  // Draw circle outline
  stroke(100);
  noFill();
  circle(0, 0, 200);
  
  // Calculate position using sin and cos
  float x = cos(angle) * 100;  // cos gives x position
  float y = sin(angle) * 100;  // sin gives y position
  
  // Draw dot moving around circle
  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, 10, 10);
  
  // Draw lines to show x and y components
  stroke(0, 255, 0);
  line(0, 0, x, 0);  // x component (horizontal)
  stroke(0, 0, 255);
  line(0, 0, 0, y);  // y component (vertical)
  
  // Labels
  fill(255);
  text("cos = " + nf(cos(angle), 1, 2), -190, -180);
  text("sin = " + nf(sin(angle), 1, 2), -190, -160);
  text("angle = " + nf(degrees(angle), 1, 1) + "°", -190, -140);
  
  // Increment angle to animate
  angle += 0.03;
}
