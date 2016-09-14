
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	for(int j = 1; j<=5; j++)
	{
	for(int i = 1; i<=5; i++)
	{
	Die bob = new Die(i*80,j*80);
	bob.show();
	bob.roll();
	}
	}
}
void mousePressed()
{
	redraw();
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
class Die 
{	
	int myX;
	int myY;
	int numDots;
	Die(int x, int y) //constructor
	{
		roll();
		myX = x;
		myY = y;
	}
	void roll()

	{
		numDots = (int)(Math.random()*7);//eventually random
	

	}
	void show()
	{
		noStroke();
		
		rect(myX,myY,80,80);

		if(numDots ==1)
		{
			fill((int)(Math.random()*256),0,0);
			ellipse(myX+20,myY+20,15,15);
		}
		if(numDots ==2)
		{
			fill(0,(int)(Math.random()*256),0);
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+60,myY+20, 15,15);
		}
		if(numDots ==3)
		{
			fill(0,0,(int)(Math.random()*256));
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+60,myY+20, 15,15);
			ellipse(myX+20,myY+40,15,15);
		}
		
		if(numDots ==4)
		{
			fill(255,0,0);
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+60,myY+20, 15,15);
			ellipse(myX+20,myY+40,15,15);
			ellipse(myX+60,myY+40,15,15);
		}

		if(numDots ==5)
		{
			fill(0,255,0);
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+60,myY+20, 15,15);
			ellipse(myX+20,myY+40,15,15);
			ellipse(myX+60,myY+40,15,15);
			ellipse(myX+20,myY+60,15,15);
		}

		if(numDots ==6)
		{
			fill(0,0,255);
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+60,myY+20, 15,15);
			ellipse(myX+20,myY+40,15,15);
			ellipse(myX+60,myY+40,15,15);
			ellipse(myX+20,myY+60,15,15);
			ellipse(myX+60,myY+60,15,15);
		}

	}
	
}