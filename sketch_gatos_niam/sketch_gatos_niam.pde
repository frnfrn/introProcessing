Gato[] niam;
int cuantosNiams;

void setup() {
  fullScreen();
  PImage niamCat = loadImage("cat.gif");
  cuantosNiams = 10;
  niam = new Gato[cuantosNiams];
  for (int i = 0; i < niam.length; i++) {
    float x = random(0, width/5*4); 
    float y = map(i, 0, niam.length, 0, height/5*4); 
    niam[i] = new Gato(niamCat, x, y);
  }
}
void draw() {
  background(10,0,50);
  for (int i = 0; i < niam.length; i++) {
    niam[i].update(); 
    niam[i].display();
  }
}