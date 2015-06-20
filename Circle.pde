class Circle { 
  float xPos;
  float yPos;
  float diameter;
  float speed;
  float xSpeed;
  float ySpeed;

  // The Constructor is defined with arguments.
  Circle(float tempxPos, float tempyPos, float tempDiameter, float tempSpeed) { 
    
    xPos = tempxPos;
    yPos = tempyPos;
    diameter = tempDiameter;
    speed = tempSpeed;
    xSpeed = random(-1.0, 1.0)*tempSpeed;
    ySpeed = random(-1.0, 1.0)*tempSpeed;
  }

  void display() {
    stroke(0);
    ellipse(xPos, yPos, diameter, diameter);
  }

  void move() {
    
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    
    if (xPos > width || xPos < 0) {
      xSpeed *= -1;
    }
    
    if (yPos > height || yPos < 0) {
      ySpeed *= -1;
    }
  }
}

