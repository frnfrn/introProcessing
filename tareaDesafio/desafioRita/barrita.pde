class Scrollbar {
  int numeral; //ESTO ES NUEVO!!!
  int swidth, sheight;    // width and height of bar
  int xpos, ypos;       // x and y position of bar
  int spos, newspos;    // x position of slider
  int sposMin, sposMax; // max and min values of slider
  int loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;

  /* El ultimo argumento de Scroll toma el valor de m */
  Scrollbar (int xp, int yp, int sw, int sh, int l) {
    swidth = sw;
    sheight = sh;
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
    loose = l;
  }

  void update() {
    if (overEvent()) {
      over = true;
    } 
    else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
      newspos = constrain(mouseX, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos)/loose;
    }
  }

  int constrain(int val, int minv, int maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth && mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } 
    else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(255);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {
      fill(100, 100, 155);
    } 
    else {
      fill(100);
    }
    rect(spos, ypos, sheight, sheight);
  }

  int getPos() {
    return round(map(spos, 9, width-9, 0, height));
  }
}