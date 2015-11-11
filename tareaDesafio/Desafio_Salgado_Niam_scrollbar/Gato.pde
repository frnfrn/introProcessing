class Gato {
  float xpos;
  float ypos;
  float angle;
  PImage niamCat;
  float yoffset=0.0;

  Gato (PImage elGif, float tempX, float tempY) {
    niamCat = elGif;
    xpos = tempX;
    ypos = tempY;
    angle = random(10, TWO_PI);
  }

  void update() {
    angle+=1.05;
    yoffset = sin(angle) * 2;
  }

  void display() {
    image(niamCat, xpos, ypos + yoffset);
  }
}