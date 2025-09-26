import geomerative.*;  // You'll need to install Geomerative via Tools... Libraries

PVector mouse = new PVector();
PVector[] pointVectors;
Mover[] movers;

RFont f;
RShape grp;
RPoint[] points;

void setup() {
  fullScreen();
  background(255);

  // Enable smoothing
  smooth();

  // VERY IMPORTANT: Always initialize the library in the setup
  RG.init(this);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(1);

  grp = RG.getText("CYC '25", "FreeSans.ttf", 100, CENTER);
  points = grp.getPoints();
  grp.draw();

  pointVectors = new PVector[points.length];
  movers = new Mover[points.length];

  for (int i = 0; i < movers.length; i++) {
    pointVectors[i] = new PVector(points[i].x, points[i].y);
    movers[i] = new Mover(points[i].x, points[i].y);
  }

  background(0);
}

float t = 0;

void draw() {
  background(360);
  mouse.set(mouseX - width/2, mouseY - height/2);

  pushMatrix();
  translate(width/2, height/2);

  if (points != null) {
    for (int i=0; i<points.length; i++) {
      movers[i].render();
      movers[i].follow(pointVectors[i]);
      movers[i].flee(mouse);
      movers[i].move();
    }
  }

  popMatrix();

  fill(#071238);
  text(frameRate, 25, 25);
}
