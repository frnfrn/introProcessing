int xPos = 1;  
Scrollbar barra;

void setup () {
  fullScreen();
  background(0, 255, 255);
  barra = new Scrollbar(0, height-40, width, 15, 10);
}

void draw () {
  barra.update();
  barra.display();
  int inString = barra.getPos();
  float inByte = float(inString);
  inByte = map(inByte, 0, 1023, 0, height);
  stroke(200, 255, 255);
  line(xPos, height, xPos, height - inByte);

  // at the edge of the screen, go back to the beginning:
  if (xPos >= width) {
    xPos = 0;
    background(255, 0, 255);
  } else {
    // increment the horizontal position:
    xPos++;
  } 
  noStroke();
  rect(0, height-40, width, 40);    
  fill(0);
  textAlign(CENTER, CENTER);
  text(barra.getPos(), width/2, height-20);
  barra.update();
} 