Scrollbar graph;
int x = 1;

void setup () {
  fullScreen();
  background(random(0,255),random(0,255),random(0,255));
  graph = new Scrollbar(0, height-80, width, 30, 30);
}
void draw () {
  stroke(200,200,255);
  line(x, height, x, height-graph.getPos());
  x = x + 6;
  if (x > width) {
    x = 1;
    background(random(0,255),random(0,255),random(0,255));
  }   
  noStroke();
  rect(0, height-40, width, 40);    
  fill(0);
  textAlign(CENTER, CENTER);
  text(graph.getPos(), width/2, height-20);
  graph.update();
  graph.display();
}