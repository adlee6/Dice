die one;
void setup() 
{
  size(500, 600);
  noLoop();
  textAlign(CENTER);
}

void draw()
{
  background(0);
  int sum = 0;
  for (int y1 = 0; y1 <500; y1 += 100) 
{
    for (int x1=0; x1<500; x1+=100) 
{
      one = new die(x1, y1);
      one.show();
      one.roll();
      sum = sum + one.n;
  fill(255);
    }
  }
  textSize(50);
  text("Total: "+sum, 250,550);
}
void mousePressed()
{
	background(0);	
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int n, myX, myY;

	die(int x, int y) //constructor
	{
		n = (int)(Math.random()*6+1);
    		myX = x;
    		myY = y;
	}
	void roll()
	{
		fill(0);
    		if (n == 1 || (n ==3 || n == 5))
     		 ellipse(myX+50, myY+50, 20, 20);
   		 if (n != 1) {
    		  ellipse (myX+20, myY+20, 20, 20);
     		 ellipse(myX+80, myY+80, 20, 20);
    		 }
   		 if (n == 4 || n == 5 || n == 6) {
      		  ellipse (myX+80, myY+20, 20, 20);
      		  ellipse(myX+20, myY+80, 20, 20);
   		 }
  	         if (n==6) {
   	          ellipse(myX+20, myY+50, 20, 20);
                  ellipse(myX+80, myY+50, 20, 20);
    		}
  	}

	void show()
	{
		fill(255, 255, 255);
    		rect(myX, myY, 100, 100, 10);
	}
}
