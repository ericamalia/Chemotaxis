 Bacteria sam;
 Bacteria [] colony;
 PImage b;
 void setup()   
 {     
 	size(900, 500);
 	colony = new Bacteria [400];
 	for(int i=0; i<colony.length; i++)
 	{
    	colony[i] = new Bacteria();
	}
	 b = loadImage("ufo_pastel.png");
 	   
 }  

 void draw()   
 {    
 	background(0);
 	frameRate(15);
 	image(b, mouseX, mouseY,150,100); 

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
 		ellipse(myX, myY, ((int)(Math.random()*12)),((int)(Math.random()*12)));
 	}
 	void move () {
 		myX = myX + ((int)(Math.random()*10));
 		myX = ((int)(Math.random()*900));
 		myY = ((int)(Math.random()*150));
 		
 		if (mousePressed){
 			myY = ((int)(Math.random()*500));
 			for (myX = mouseX -50; myX < mouseX +50; myX++){
 				myY = ((int)(Math.random()*mouseY));
 				
 			
 			}
 		}
 	 
 	
}
}

