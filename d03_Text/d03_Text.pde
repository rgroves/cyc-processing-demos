/*******************************************************************************
** Demo #03
**
** Using Text
*******************************************************************************/

color red = color(255, 0, 0);


void setup() {
  size(800, 600);
  background(200);
  noLoop();

  
  // The createFont method converts custom (.ttf and .otf) fonts into the format Porcessing uses.
  // Note: the .ttf/.otf file needs to reside in the data directory of this sketch's directory. 
  PFont bitCountFont = createFont("BitcountSingleInk.ttf", 60);
  textFont(bitCountFont);
}


void draw() {
  textLeftTopAligned();
  
  textRightTopAligned();

  textCenterCenterAligned();

  textCenterBaselineAligned();
}
