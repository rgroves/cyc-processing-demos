/*******************************************************************************
 ** Demo #07
 **
 ** Randomness and Noise
 *******************************************************************************/
void setup() {
  size(800, 600);

  background(255);
  noStroke();

  // You can slow things down by setting a lower frameRate.
  // Uncomment for randomVsNoise();
  //frameRate(10);
}

void draw() {
  simpleRandomDemo();

  //randomVsNoise();

  //noise2D();
  
  //noise3D();
}

void mousePressed() {
  // Clear screen and create a burst of random circles
  background(0);

  for (int i = 0; i < 20; i++) {
    fill(random(255), random(255), random(255), random(100, 200));
    ellipse(random(width), random(height), random(20, 80), random(20, 80));
  }
}
