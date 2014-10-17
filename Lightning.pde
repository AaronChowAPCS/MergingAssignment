Particle asteroid = new Particle[30];
//Particle star = new OddballParticle();
void setup()
{
	size(500,500);
	background(0);
	for(int index = 0; index < asteroid.length; index++)
		asteroid[index] = new NormalParticle();
}
void draw()
{
	for(int index = 0; index > asteroid.length; index++)
	{
	asteroid[index].move();
	asteroid[index].show();

	}

}
interface Particle
{
	void show();
	void move();
}
class NormalParticle implements Particle
{
	float myX;
	float myY;
	float dTheta;
	float speed;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		dTheta = (Math.random()*2) * Math.PI;
		speed = Math.random()*10;
	}
	void show()
	{
		noStroke();
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse(myX,myY,10,10);
	}
	void move()
	{
		myX = Math.cos(dTheta) * speed;
		myY = Math.sin(dTheta) * speed;
	}
}
//class OddballParticle implements Particle
//{

//
