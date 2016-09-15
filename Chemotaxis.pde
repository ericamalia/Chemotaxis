 Bacteria sam;
 Bacteria [] colony;
 void setup()   
 {     
 	size(900, 500);
 	colony = new Bacteria [40];
 	for(int i=0; i<colony.length; i++)
 	 {
    colony[i] = new Bacteria();
	  }
 	//initialize bacteria variables here   
 }  

 void draw()   
 {    
 	background(0);
 	frameRate(15);
 	for(int i=0; i<colony.length; i++)
  {
  	colony[i].show();
    colony[i].move();
    
	 }
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria () {
 		myX = (int)(Math.random()*900);
 		myY = (int)(Math.random()*500);
 	} 
 	void show () {
 		stroke(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
 		noFill();
 		ellipse(myX, myY, 10, 10);
 	}
 	void move () {
 		myX = myX + ((int)(Math.random()*40)); 
 	}
 }    