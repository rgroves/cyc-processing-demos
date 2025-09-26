void hud() {
  pushStyle();
  noStroke();
  fill(black);
  textSize(24);

  String frameRateText = "FPS: " + round(frameRate);
  int hudWidth = ceil(textWidth(frameRateText));
  int padding = hudWidth;

  rectMode(CORNER);
  rect(0, 0,  padding, 48);

  fill(white);
  textAlign(CENTER, TOP);
  text(frameRateText, padding/2, 15);
  popStyle();
}
