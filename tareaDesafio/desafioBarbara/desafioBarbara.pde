int xPos = 1;  
Scrollbar barra;

 void setup () {
   size(400, 300);
   background(0);
   barra = new Scrollbar(0, height-290, width, 10, 10, 800);
 }
 
  void draw () {
  barra.update();
  barra.display();
  int inString = barra.getPos();
  float inByte = float(inString);
  inByte = map(inByte, 0, 1023, 0, height);
  stroke(127,34,255);
  line(xPos, height, xPos, height - inByte);

 // at the edge of the screen, go back to the beginning:
 if (xPos >= width) {
 xPos = 0;
 background(0);
 }
 else {
 // increment the horizontal position:
 xPos++;
 }
 }
  