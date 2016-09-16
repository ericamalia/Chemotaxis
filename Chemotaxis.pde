 Bacteria sam;
 Bacteria [] colony;
 PImage b;
 void setup()   
 {     
 	size(900, 500);
 	colony = new Bacteria [40];
 	for(int i=0; i<colony.length; i++)
 	 {
    colony[i] = new Bacteria();
	  }
	 b = loadImage("umbrella9.png");
 	   
 }  

 void draw()   
 {    
 	background(0);
 	frameRate(15);
 	image(b, mouseX, mouseY,100,100); 

 	for(int i=0; i<colony.length; i++)
  {
  	colony[i].show();
    colony[i].move();
    
	 } 

	
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
 		if (myX >= 900){
 			myX = 0;
 			myX = myX - ((int)(Math.random()*40)); 
 		}
 	 if ( myX == mouseX){
 	 	myY = myY + ((int)(Math.random()*40)-40); 
 	 }
 	}
 } 

