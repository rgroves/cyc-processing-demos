/*******************************************************************************
 ** Demo #10
 **
 ** Fun with the camera
 *******************************************************************************/
import processing.video.*;

Capture cam;

float w, h;
int t = 0;
PFont myFont;
String cyc = "‼#CYC25‼";
float charSize = 14;


void setup() {
  size(1280, 960);

  myFont = createFont("Courier New", 32, true);
  textFont(myFont);

  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    // The camera can be initialized directly using an
    // element from the array returned by list().
    // Note: using a small size here 128x96 so that when blown up it is pixelated.
    cam = new Capture(this, 128, 96, cameras[0]);
    cam.start();

    // Calculate the width and height to use from mapping text to pixels.
    w = width / cam.width;
    h = height / cam.height;

    float aspectRatio = (float)cam.width / cam.height;

    println(cam.width, "", cam.height, "Camera aspect ratio: " + aspectRatio);
  }
}

void draw() {
  background(0);

  if (cam.available() == true) {
    cam.read();
  }

  for (int j = 0; j < cam.height; j++) {
    for (int i = 0; i < cam.width; i++) {
      // Calculate the current pixel index.
      int ix = (i + j * cam.width);

      // Extract RGB values from the pixel color.
      color c = cam.pixels[ix];
      float r = (c >> 16) & 0xFF; // red(c);
      float g = (c >> 8) & 0xFF;  // green(c);
      float b = c & 0xff;         // blue(c);

      // Calc average brightness of pixel.
      // Use average as opacity for the green fill color to simulate the original brightness.
      int avg = int((r+b+g) / 3);
      fill(color(#00ff00, avg));

      // Get next character in sequence to display as the pixel.
      char cText = cyc.charAt(t % cyc.length());
      textSize(charSize);
      text(cText, i*w, j*h);

      t++;
    }
  }

  image(cam, 0, 0);
}
