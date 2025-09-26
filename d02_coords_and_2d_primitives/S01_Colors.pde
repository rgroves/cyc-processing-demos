// In Processing color is a Datatype.
// Specifying colors can be done in multiple ways:
color black = color(0);         // Value between black (0) and white (255)
color gray = color(128);
color white = color(255);
color green = 0xFF00FF00;       // Hexadecimal Color (0xAARRGGBB) (AA = alpha)
color purple = #800080;         // HTML Color
color orange = #FFA500;
color red = color(255, 0, 0);   // RGB Color
color blue = color(0, 0, 255);
color goldenRod = color(218, 165, 32);

void setColorMode() { 
  // Note: RGB is the default color mode.
  //       HSB is the other, see later demo on that.
  colorMode(RGB);
}
