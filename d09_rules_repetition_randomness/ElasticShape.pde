interface ShapeRenderer {
  void renderShape(float x, float y, float shapeSize);
}

class CircleRenderer implements ShapeRenderer {
  void renderShape(float x, float y, float shapeSize) {
    circle(x, y, shapeSize);
  }
}

class SquareRenderer implements ShapeRenderer {
  void renderShape(float x, float y, float shapeSize) {
    square(x, y, shapeSize);
  }
}

class TriangleRenderer implements ShapeRenderer {
  PVector v0 = new PVector();
  PVector v1 = new PVector();
  PVector v2 = new PVector();

  void renderShape(float x, float y, float shapeSize) {
    v0.set(shapeSize / 2 * cos(0), shapeSize / 2 * sin(0));
    v1.set(shapeSize / 2 * cos(THIRD_TAU), shapeSize / 2 * sin(THIRD_TAU));
    v2.set(shapeSize / 2 * cos(THIRD_TAU * 2), shapeSize / 2 * sin(THIRD_TAU * 2));
    triangle(v0.x, v0.y, v1.x, v1.y, v2.x, v2.y);

    stroke(purple);
    strokeWeight(10);
    float arcJitter = noise(t * .1) * QUARTER_PI;
    arc(x, y, shapeSize, shapeSize, 0 - arcJitter, 0);
    arc(x, y, shapeSize, shapeSize, THIRD_TAU - arcJitter, THIRD_TAU);
    arc(x, y, shapeSize, shapeSize, THIRD_TAU * 2 - arcJitter, THIRD_TAU * 2);
  }
}

class ElasticShape {
  color shapeColor;
  float maxSize;
  float minSize;
  float shapeSize;
  float sizeRate = 1;
  ShapeRenderer renderer;

  ElasticShape(color shapeColor, float maxSize, ShapeRenderer renderer) {
    this.maxSize = maxSize;
    this.shapeColor = shapeColor;
    this.renderer = renderer;
    minSize = random(.1, .8) * -maxSize;
    shapeSize = minSize;
  }

  void update() {
    if (shapeSize >= maxSize || shapeSize <= minSize) {
      sizeRate *= -1;
      shapeSize = constrain(shapeSize, minSize, maxSize);

      if (shapeSize == minSize) {
        minSize = random(.1, .8) * -maxSize;
      } else if (shapeSize == maxSize) {
        shapeColor = color(random(255), random(255), random(255));
      }
    }

    shapeSize += sizeRate;
  }

  void render(float x, float y) {
    if (shapeSize <= 0 ) {
      return;
    }

    stroke(shapeColor);
    renderer.renderShape(x, y, shapeSize);
  }
}
