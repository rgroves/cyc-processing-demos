class Mover {
  PVector pos;
  PVector vel;
  PVector acc;

  float maxSpeed = 10;
  float maxFleeSpeed = maxSpeed * 10;

  float proximityRadius = 10;
  float fleeProximityRadius = proximityRadius * 6;

  PVector fleeForce = new PVector();
  PVector followForce = new PVector();

  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector();
    acc = new PVector();
  }

  void flee(PVector fleeTarget) {
    if (pos.dist(fleeTarget) > fleeProximityRadius) {
      fleeForce.set(0, 0);
      return;
    }
  
    PVector destination = PVector.sub(fleeTarget, pos);
    float dist = destination.mag();
    float speed = map(dist, 0, fleeProximityRadius, -maxFleeSpeed, 0);

    destination.setMag(speed);
    fleeForce = PVector.sub(destination, vel);
    fleeForce.setMag(fleeForce.mag() * 10);
  }

  void follow(PVector target) {
    PVector destination = PVector.sub(target, pos);
    float dist = destination.mag();
    float speed = dist <= proximityRadius ? map(dist, 0, proximityRadius, 0, maxSpeed) : maxSpeed;
    destination.setMag(speed);
    followForce = PVector.sub(destination, vel);
  }

  void move() {
    if (fleeForce.mag() > 0) {
      acc.add(fleeForce);
    } else {
      acc.add(followForce);
    }

    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void render() {
    strokeWeight(3);
    stroke(16, 100, 100);
    point(pos.x, pos.y);
  }
}
