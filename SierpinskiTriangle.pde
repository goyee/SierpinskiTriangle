public void setup()
{
	background(0);
	size(500,500);
}
public void draw()
{
	sierpinski(0,500,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{	
	stroke(255);
	fill(0);
	if(len <= 20) {
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
		sierpinski(x+len/8,y-len/4,len/4);
	}
}