int startX = 0;
int startY = 600;
int endX = 0;
int endY = 600;

void setup()
{
  size(600,600);
  // strokeWeight();
  // background();
}
void draw()
{

	stroke((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));

	while (endX < 601) 
	{
		endX = startX + (int)(Math.random()*25);
		endY = startY + (int)(Math.random()*25)-25;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;

	}




}

void mousePressed()
{
	 startX = 0;
	 startY = 600;
	 endX = 0;
	 endY = 600;

}

