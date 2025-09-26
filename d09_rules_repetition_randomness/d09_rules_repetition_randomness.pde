/*******************************************************************************
 ** Demo #09
 **
 ** Pulling it all together and using the 3 R's of Creative Coding:
 **   - Rules
 **   - Repetition
 **   - Randomness
 *******************************************************************************/
float cx, cy;
float shapeSize = 200;
float t = 0;
float THIRD_TAU = TAU / 3;
float gridScale;
int rows, cols;
float xOff, yOff;

ElasticShape elasticCircle;
ElasticShape elasticSquare;
ElasticShape elasticTriangle;


void setup() {
  size(800, 600);
  background(white);
  cx = width / 2;
  cy = height / 2;
  rectMode(CENTER);
  ellipseMode(CENTER);
  noFill();

  // Reports and sets a specific seeds for repeatability.
  long rSeed = System.nanoTime();
  println("randomSeed:", rSeed);
  randomSeed(rSeed);

  long nSeed = System.nanoTime();
  println("randomSeed:", nSeed);
  noiseSeed(nSeed);

  // Calculations for fitting the number of shapes
  // across the screen with framing and centering
  int shapesAcross = 1;

  int frameSize = 15;
  float drawableWidth = width - frameSize * 2;
  float drawableHeight = height - frameSize * 2;

  shapeSize = shapesAcross > 1 ?
    drawableWidth / shapesAcross :
    min(drawableWidth, drawableHeight) / shapesAcross;

  gridScale = shapeSize;
  println(drawableWidth, drawableHeight, gridScale);
  cols = max(1, floor(drawableWidth / gridScale));
  rows = max(1, floor(drawableHeight / gridScale));

  xOff = frameSize + width % (frameSize * 2 + cols * gridScale) / 2;
  yOff = frameSize + height % (frameSize * 2 + rows * gridScale) / 2;

  println(xOff, yOff);

  // Create ElasticShape instances for Circle, Square, Triangle
  elasticCircle = new ElasticShape(green, shapeSize, new CircleRenderer());
  elasticSquare = new ElasticShape(red, shapeSize, new SquareRenderer());
  elasticTriangle = new ElasticShape(blue, shapeSize, new TriangleRenderer());
}

void draw() {
  background(white);

  //pushStyle();
  //noStroke();
  //fill(white, 10);
  //rect(0, 0, width * 2, height * 2);
  //popStyle();

  elasticCircle.update();
  elasticSquare.update();
  elasticTriangle.update();

  for (int col = 0; col < cols; col++) {
    for (int row = 0; row < rows; row++) {
      float x = xOff + col * gridScale + gridScale / 2;
      float y = yOff + row * gridScale + gridScale / 2;

      strokeWeight(5);
      stroke(black);
      point(x, y);

      stroke(gray);
      ellipse(x, y, shapeSize / 4, shapeSize / 2);

      elasticCircle.render(x, y);

      stroke(gray);
      rect(x, y, shapeSize / 4, shapeSize / 2);

      elasticSquare.render(x, y);

      pushMatrix();
      float angle = radians(t % 360);
      translate(x, y);
      rotate(angle);
      elasticTriangle.render(0, 0);
      popMatrix();
    }
  }

  //hud();

  t++;
}
