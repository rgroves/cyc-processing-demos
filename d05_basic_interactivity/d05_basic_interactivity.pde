/*******************************************************************************
 ** Demo #05
 **
 ** Basic Interactivity
 *******************************************************************************/
float shapeSize = 100;

void setup() {
  size(800, 600);
  background(128);
  strokeWeight(2);
  stroke(0);
  fill(255);
}

void draw() {
}

// NOTE: Mouse and keyboard events only work when a program has draw(). 
//       Without draw(), the code is only run once and then stops listening for events.

// All mouse interactions can be found here: https://processing.org/reference#input-mouse

// mouseX and mouseY are globally available and represent the x,y coordinates of the mouse.

// mouseButton is also globally available and represents the current button being pressed.


void mouseMoved() {
  circle(mouseX, mouseY, shapeSize);
}

void mouseDragged() {
  square(mouseX, mouseY, shapeSize);
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    background(255);
  }
}

// All keyboard interactions can be found here: https://processing.org/reference#input-keyboard

void keyrE() {
  // Key is globally available and represents the key that is being pressed 
  println(key);
  
  switch (key) {
    case 'r':
      fill(255, 0, 0);
      break;
      
    case 'g':
      fill(0, 255, 0);
      break;
      
    case 'b':
      fill(0, 0, 255);
      break;
  }
}
