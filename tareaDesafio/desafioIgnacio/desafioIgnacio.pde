Scrollbar graph;
int x = 1;

void setup () {
  size(720, 480);
  background(30, 255, 120);
  graph = new Scrollbar(0, height-40, width, 10, 10);
}
void draw () {
  stroke(200,200,255);
  line(x, height, x, height-graph.getPos());
  x = x + 1;
  if (x > width) {
    x = 1;
    background(30, 255, 120);
  }   
  noStroke();
  rect(0, height-40, width, 40);    
  fill(0);
  textAlign(CENTER, CENTER);
  text(graph.getPos(), width/2, height-20);
  graph.update();
  graph.display();
}