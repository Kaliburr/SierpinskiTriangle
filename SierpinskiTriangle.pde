public void setup()
{
	size(600,600);
	noLoop();
}
public void draw()
{
	background(0);
	sierpinski(0,600,600);
}
public void mousePressed()
{
	redraw();
}
public void sierpinski(int x, int y, int len) 
{
	int c1=(int)(Math.random()*265);
	int c2=(int)(Math.random()*265);
	int c3=(int)(Math.random()*265);	
	fill(c1,c2,c3);
	int a=(int)(Math.random()*20);
	if(len>=a){
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
	else
		triangle(x,y,x+len,y,x+len/2,y-len);		
}
