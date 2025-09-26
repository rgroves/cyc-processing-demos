/*******************************************************************************
 ** Demo #08
 **
 ** Sketching with more harmonious colors
 *******************************************************************************/
void setup() {
  size(800, 600);
  background(0);
  frameRate(10);
  
  // This sets Hue/Saturation/Brightness color mode.
  // After this is set the 3 values used for setting colors are no longer interpreted as RGB.
  // They are interpreted as HSB using values of:
  //   * 0 to 360 for Hue
  //   * 0 to 100 for Saturation
  //   * 0 to 100 for Brightness
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  //colorWheelWithDegrees();
  
  blueGreenDots();
}
