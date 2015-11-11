 // Graphing sketch


 // This program takes ASCII-encoded strings
 // from the serial port at 9600 baud and graphs them. It expects values in the
 // range 0 to 1023, followed by a newline, or newline and carriage return

 // Created 20 Apr 2005
 // Updated 18 Jan 2008
 // by Tom Igoe
 // This example code is in the public domain.
 //import processing.serial.*;
 //Serial myPort;        // The serial port
 
 Scrollbar barra;
 int xPos = 1;         // horizontal position of the graph
 int oldAmount = 0; 

 void setup () {
 // set the window size:

 size(400, 400);
 barra = new Scrollbar(0, height-20, width, 10, 10);


 // set inital background:
 background(0);
 }
 void draw () {
  println(barra.getPos());
  float inByte = (float)barra.getPos();
   if(oldAmount != barra.getPos()){ //ESTO TAMBIEN ES NUEVO!!
     inByte = (float)barra.getPos();
     oldAmount = barra.getPos(); 
  }
 stroke(0,204,204);
 line(xPos, height-30, xPos, height-30 - inByte);
 
 // at the edge of the screen, go back to the beginning:
 if (xPos >= width) {
 xPos = 0;
 background(0);
 }
 else {
 // increment the horizontal position:
 xPos++;
 }
 // everything happens in the serialEvent()
 barra.update();
 barra.display();
 }