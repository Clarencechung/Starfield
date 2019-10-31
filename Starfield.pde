Particle [] bob = new Particle[500];
void setup()
{
	size(500,500);
	background(0);
	for(int i = 0; i < bob.length; i++)
	bob[i] = new Particle();
	bob[0] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < bob.length; i++)
	{
	bob[i].move();
	bob[i].show();
	}
}
class Particle
{
	double myX,myY,myAngle,mySpeed;
	int myColor;
	Particle()
	{
		myX = 250;
		myY = 250;
		myColor = color(random(0,255),random(0,255),random(0,255));
		myAngle = Math.random()*3 * Math.PI ;
		mySpeed = Math.random()*11;
	}
	void move()
	{
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,20,20);
		fill(255,255,255);
		textSize(15);
		text("S",(float)myX - 4,(float)myY + 5);
	}
}

class OddballParticle extends Particle 
{

	OddballParticle()
	{
		myX = 250;
		myY = 250;

	}
	void move()
	{
		myX = myX + Math.random()*3 - 1;
		myY = myY + Math.random()*3 - 1;
	}
	void show()
	{

		fill(myColor);
		ellipse((float)myX,(float)myY,50,50);
		fill(255,255,255);
		textSize(15);
		text("M&M",(float)myX - 18,(float)myY + 5);
	}
}
	// 	ellipse((float)myX, (float)myY, 50,50);
	// 	fill(255,255,255);
	// 	textSize(24);
	// 	text("M&M",(float)myX,(float)myY);
	// }

