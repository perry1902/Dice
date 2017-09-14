
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die bob= new Die(30,30);
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
		fill(0);
		if (Math.random()*6 > 5)//put 0 to 5
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
		for(y=0; y<100;y++)
		{
			fill(255);
			rect(myX,myY,50,50,20);
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
			else if(num==5)
			{
				fill(0);
				ellipse(myX+12,myY+10,8,8);
				ellipse(myX+12,myY+39,8,8);
				ellipse(myX+38,myY+10,8,8);
				ellipse(myX+38,myY+39,8,8);
				ellipse(myX+25,myY+24,8,8);
			}
			else if (num==4)
			{
				fill(0);
	            ellipse(myX+14,myY+12,8,8);
				ellipse(myX+14,myY+38,8,8);
				ellipse(myX+36,myY+12,8,8);
				ellipse(myX+36,myY+38,8,8);
			}
			else if (num==3)
			{
				fill(0);
	 			ellipse(myX+25,myY+25,8,8);
				ellipse(myX+14,myY+38,8,8);
				ellipse(myX+36,myY+12,8,8);
			}
			else if (num==2)
			{
				fill(0);
				ellipse(myX+15,myY+37,8,8);
				ellipse(myX+35,myY+13,8,8);
			}
			else
			{
				fill(0);
				ellipse(myX+25,myY+25,8,8);
			}
		}	
	}
}
