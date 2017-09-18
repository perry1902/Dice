
void setup()
{
	size(520,520);
	noLoop();
}
void draw()
{
	background(220,120,91);
	int sum=0;
	for(int y=20; y<=320; y=y+60)
		{
			for (int x=20; x<= 460; x=x+60)
			{
				Die bob= new Die(x,y);
				bob.show();
				sum=sum+bob.num;
			}
		}
	textSize(32);
    text("The sum of all the dice is "+sum ,30,450);

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
		int r= (int)(Math.random()*256);
		int g= (int)(Math.random()*256);
		int b= (int)(Math.random()*256);
		fill(r,g,b);
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
