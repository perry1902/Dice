
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die bob= new Die(150,150);
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int num;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		roll();
		myX=x;
		myY=y;
	}
	void roll()
	{
		if (Math.random()*6 > 0)//put 0 to 5
		{
			num=6;
		}
		else if (Math.random()*5 > 4)
		{
			num=5;
		}
		else if (Math.random()*4 > 3)
		{
			num=4;
		}
		else if (Math.random()*3 > 2)
		{
			num=3;
		}
		else if (Math.random()*2 > 1)
		{
			num=2;
		}
		else
		{
			num=1;
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,myX-100,myY-100);
		if (num==6)
		{
			fill(0);
			ellipse(myX+15,myY+10,8,8);
			ellipse(myX+15,myY+24,8,8);
			ellipse(myX+15,myY+39,8,8);
			ellipse(myX+35,myY+10,8,8);
			ellipse(myX+35,myY+24,8,8);
			ellipse(myX+35,myY+39,8,8);
		}
	}
}
