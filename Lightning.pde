int startX = 300;
int startY = 300;
int endX = (int)(Math.random()*601);
int endY = (int)(Math.random()*251);


void setup()
{
  size(600,600);
  // strokeWeight();
  background(52, 127, 130);
}
void draw()
{

	medusaFace();

	strokeWeight(4);

	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

	while (endX < 601) 
	{
		endX = startX + (int)(Math.random()*25);
		endY = startY + (int)(Math.random()*30)-25;
		line(startX, startY, endX, endY);
		line(600-startX, startY, 600-endX, endY);
		startX = endX;
		startY = endY;

	}

}

void mousePressed()
{
	 startX = 300;
	 startY = 300;
	 endX = (int)(Math.random()*601);
	 endY = (int)(Math.random()*251);

}

void medusaFace()
{
	stroke(193, 181, 164);
	fill(255, 224, 196);
	ellipse(300,300,250,250);
	//eyes below
	noStroke();
	fill(132, 125, 115);
	ellipse(300-50, 300-25, 30,30); //left eye
	ellipse(300+50, 300-25,30,30); //right eye

	//mouth
	fill(99, 92, 82);
	arc(300,330, 100, 100, 0, PI);

}


