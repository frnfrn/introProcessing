Gato[] niam;
Scrollbar graph;
int oldAmount = 0;

void setup() {
  fullScreen();
  graph = new Scrollbar(0, height-40, width, 10, 10);
  creaNiams(graph.getPos());
}

void draw() {
  background(10, 0, 50);
  //PRIMERO EL CONTROL
  noStroke();
  rect(0, height-40, width, 40);    
  fill(0);
  textAlign(CENTER, CENTER);
  text(graph.getPos(), width/2, height-20);
  graph.update();
  graph.display();
  //AHORA LOS NIAMS
  if (oldAmount != graph.getPos()) {
    creaNiams(graph.getPos());
    oldAmount = graph.getPos();
  }
  for (int i = 0; i < niam.length; i++) {
    niam[i].update(); 
    niam[i].display();
  }
}

void creaNiams(int cuantosNiams) {
  niam = new Gato[cuantosNiams];
  PImage niamCat = loadImage("perro.png");
  for (int i = 0; i < niam.length; i++) {
    float x = random(0, width/5*4); 
    float y = map(i, 0, niam.length, 0, height/5*4); 
    niam[i] = new Gato(niamCat, x, y);
  }
}