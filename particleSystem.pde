Circle[] circles;

int circleNumber = 25;

void setup() {
  size(800, 600);
  smooth();
  


  circles = new Circle[circleNumber];
  int speed = 5;  
  int diameter = 50;

  for (int i = 0; i < circleNumber; i++) {
    circles[i] = new Circle(random(0, width), random(0, height), diameter, speed);
  }
}

void draw() {
  background(0);
  //fill(0, 20);
  //noStroke();
  //rect(0, 0, width, height);

  for (Circle circle : circles) {
    circle.move();
    //circle.display();
  }

  for (int i = 0; i < circles.length; i++) {
    for (int j = 0; j < circles.length; j++) {
      stroke(0);

      float dist = dist(circles[i].xPos, circles[i].yPos, circles[j].xPos, circles[j].yPos);
      stroke(map(dist, 0, 300, 255, 0));
      //stroke(200);
      if (dist < 300) {

        line(circles[i].xPos, circles[i].yPos, circles[j].xPos, circles[j].yPos);
      }
    }
  }
}
