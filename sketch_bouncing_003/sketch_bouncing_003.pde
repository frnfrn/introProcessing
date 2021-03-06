/*

 Podría agregar más objetos, partiendo desde distints posiciones.
 
 */

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
}

class Bouncing {

  float pos_x;
  float pos_y;
  float move_x;
  float move_y;


  Bouncing(float pos_x_Especifico, float pos_y_Especifico, float move_x_Especifico, float move_y_Especifico) {
    pos_x = pos_x_Especifico;
    pos_y = pos_y_Especifico ;
    move_x = move_x_Especifico;
    move_y = move_y_Especifico;
  }
  void display() {
    ellipse(pos_x, pos_y, 10, 10);
  }

  void rebota() {
    pos_x = pos_x + move_x;
    pos_y = pos_y + move_y;
    if (pos_x > width) {
      pos_x = width;
      move_x = -move_x;
    }
    if (pos_y > height) {
      pos_y = height;
      move_y = -move_y;
    }
    if (pos_x < 0) {
      pos_x = 0;
      move_x = -move_x;
    }
    if (pos_y < 0) {
      pos_y = 0;
      move_y = -move_y;
    }
  }
}