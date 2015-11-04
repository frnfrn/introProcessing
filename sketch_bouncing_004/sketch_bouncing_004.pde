Bouncing myBouncing1;
Bouncing myBouncing2;
Bouncing myBouncing3;
Bouncing myBouncing4;

void setup() {
  fullScreen();
  background(25);  
  noStroke();
  myBouncing1 = new Bouncing(0, 0, 5, -5);
  myBouncing2 = new Bouncing(width, 0, 5, -5);
  myBouncing3 = new Bouncing(0, height, 5, -5);
  myBouncing4 = new Bouncing(width, height, 5, -5);
}

void draw() {
  fill(255);
  myBouncing1.rebota();
  myBouncing1.display();
  myBouncing2.rebota();
  myBouncing2.display();
  myBouncing3.rebota();
  myBouncing3.display();
  myBouncing4.rebota();
  myBouncing4.display();
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      saveFrame("super-resultado-###.png");
    } else {
      background(0);
    }
  }
}