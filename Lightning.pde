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
	medusaFace();

	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

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

void medusaFace()
{
	stroke(193, 181, 164);
	fill(216, 198, 175);
	ellipse(300,300,250,250);
	//eyes below
	noStroke();
	fill(132, 125, 115);
	ellipse(300-50, 300-25, 30,30); //left eye
	ellipse(300+50, 300-25,30,30);
}
