int xPos = 1;  
Scrollbar barra;

 void setup () {
   fullScreen();
   background(random(255), random(255), random(255));
   barra = new Scrollbar(0, height-200, width, 10, 5, 900);
 }
 
  void draw () {
  barra.update();
  barra.display();
  int inString = barra.getPos();
  float inByte = float(inString);
  inByte = map(inByte, 0, 1023, 0, height);
  stroke(50,50,50);
  line(xPos, height, xPos, height - inByte);
  // at the edge of the screen, go back to the beginning:
 if (xPos >= width) {
 xPos = 0;
 background(random(255),random(255),random(255));
 }
 else {
 // increment the horizontal position:
 xPos++;
 }
 }