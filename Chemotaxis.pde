Bacteria [] aBunch;
void setup()
{
  aBunch = new Bacteria[300];
  size(500,500);
  for(int i = 0; i < aBunch.length; i++)
  
  {aBunch[i] = new Bacteria();
  }
}
void draw()
{
  background(0);
    for(int i = 0; i < aBunch.length; i++)
    {
     aBunch[i].show();
     aBunch[i].move(); 
    }
   
}
class Bacteria
{
  int myX, myY;
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX, myY, 50,50);
  }
  void move()
  {
    if(myX > mouseX)
    {
      myX = myX + (int)(Math.random()*5)-1;
      myY = myY + (int)(Math.random()*5)-2;
    }
    if(myX < mouseX)
    {
      myX = myX + (int)(Math.random()*5)-3;
      myY = myY + (int)(Math.random()*5)-2;
    }
  }
  Bacteria()
  { 
    myX = myY = 250;
  }
}