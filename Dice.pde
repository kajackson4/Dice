Die yves;
void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  int sum = 0;
  background(0);
  for(int j = 25; j < 300; j = j + 100)
  {
  for(int k = 70; k < 300; k = k + 100)
  {
  Die yves = new Die(k, j);
  yves.roll();
  yves.show();
  sum = sum + yves.numDots;
  }
}
fill(255);
text("Roll total: " + sum, 160, 350);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int numDots, myX, myY;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    numDots = 1;
  }
  void roll()
  {
    numDots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 60, 60);
    fill(0);
    if(numDots == 1){
      ellipse(myX+30, myY+30, 17, 17);
    } else if(numDots == 2){
      ellipse(myX+30, myY+20, 15, 15);
      ellipse(myX+30, myY+40, 15, 15);
    } else if(numDots == 3){
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+30, myY+30, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
    } else if(numDots == 4){
      ellipse(myX+15, myY+15, 15, 15);
      ellipse(myX+15, myY+45, 15, 15);
      ellipse(myX+45, myY+15, 15, 15);
      ellipse(myX+45, myY+45, 15, 15);
    }else if(numDots == 5){
      ellipse(myX+30, myY+30, 12, 12);
      ellipse(myX+15, myY+15, 12, 12);
      ellipse(myX+15, myY+45, 12, 12);
      ellipse(myX+45, myY+15, 12, 12);
      ellipse(myX+45, myY+45, 12, 12);
    }else{
      ellipse(myX+15, myY+12, 11, 11);
      ellipse(myX+15, myY+30, 11, 11);
      ellipse(myX+15, myY+47, 11, 11);
      ellipse(myX+45, myY+12, 11, 11);
      ellipse(myX+45, myY+30, 11, 11);
      ellipse(myX+45, myY+47, 11, 11);
    }
  }
}
