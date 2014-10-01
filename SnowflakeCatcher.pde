SnowFlake [] a;
void setup()
{
  background(0);
  size(300,300);  
  a = new SnowFlake[100];
  for(int i=0;i<a.length;i++)
  {
    a[i]=new SnowFlake();
  }
}
void draw()
{
  for(int i=0;i<a.length;i++)
  {
    a[i].erase();
    a[i].lookDown();
    a[i].move();
    a[i].wrap();
    a[i].show();
  } 
}

void mouseDragged()
{
  if(mousePressed==true && mouseButton==RIGHT)
  {
    fill(255);
    noStroke();
    ellipse(mouseX,mouseY,10,10);
  }
  else if(mousePressed==true && mouseButton==LEFT)
  {
    fill(0);
    noStroke();
    ellipse(mouseX,mouseY,20,20);
  }
}

class SnowFlake
{
    int myX,myY;
    boolean isMoving;
  SnowFlake()
  {
    myX=(int)(Math.random()*301);
    myY=(int)(Math.random()*301);
    isMoving=true;
  }
  void show()
  {
    stroke(0);
    fill(255);
    ellipse(myX,myY,5,5); 
  }
  void lookDown()
  {
    if(get(myX,myY+4)!=color(0))
    {
      isMoving=false;
    }
    else
    {
      isMoving=true; 
    }
  }
  void erase()
  {
    stroke(0);
    fill(0);
    ellipse(myX,myY,7,7);
  }
  void move()
  {
    if(isMoving==true)
    {
      myY++;
    }
  }
  void wrap()
  {
    if(myY>295)
    {
      myY=0;
    }
  }
}
