int xPos = 1;  
Scrollbar barra;

 void setup () {
   size(600, 300);
   background(111, 17, 36);
   barra = new Scrollbar(0, height -10, width, 10, 10, 1000);
 }
 
  void draw () {
  barra.update();
  barra.display();
  int inString = barra.getPos();
  float inByte = float(inString);
  inByte = map(inByte, 0, 1023, 0, height);
  stroke(193,55,83);
  line(xPos, height, xPos, height - inByte);

 // at the edge of the screen, go back to the beginning:
 if (xPos >= width) {
 xPos = 0;
 background(111, 17, 36);
 }
 else {
 // increment the horizontal position:
 xPos++;
 }
 }