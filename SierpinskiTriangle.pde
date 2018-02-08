public void setup()
{
  background(0);
  size(600, 600);
}
public void draw()
{
  noStroke();
  fill(mouseX/2.35, 255-mouseY/2.35, (mouseX + mouseY)/4.71);
  sierpinski(0, 600, 600);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=5)
    triangle(x, y, x+len, y, x+len/2, y-len);
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}