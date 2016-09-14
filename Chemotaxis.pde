 Bacteria sam;
 void setup()   
 {     
 	size(900, 500);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(0);
 	sam = new Bacteria();
 	sam.show();
 	sam.move();
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
 		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX, myY, 5, 5);
 	}
 	void move () {
 		myX = myX + (int)(Math.random()*8)-4; 
 	}
 }    