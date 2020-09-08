int startX = 0;
int endX = 0;
int startY = 150;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(1);
  frameRate(60);
  background(0);
}
void draw()
{
  fill(0, 0, 0, 5);
  stroke(0, 0, 0, 5);
  rect(0, 0, 300, 300);
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  while (endX < 300) {
    endX = startX + (int)(Math.random() * 11 - 2);
    endY = startY + (int)(Math.random() * 21 - 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  endX = 0;
  startY = 150;
  endY = 150;
}
