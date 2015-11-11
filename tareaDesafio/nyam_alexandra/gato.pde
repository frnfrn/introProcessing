class Gato {
  float xpos;
  float ypos;
  float angle;
  PImage niamCat;
  float yoffset=4.0;

  Gato (PImage elGif, float tempX, float tempY) {
    niamCat = elGif;
    xpos = tempX;
    ypos = tempY;
    angle = random(0, TWO_PI);
  }

  void update() {
    angle+=0.20;
    yoffset = sin(angle) * 10;
  }

  void display() {
    image(niamCat, xpos, ypos + yoffset);
  }
}