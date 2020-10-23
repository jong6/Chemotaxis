ppl [] heads;
void setup()
  {
    frameRate(30);
    size (1000,1000);
    heads = new ppl[400];
    for(int i=0; i<heads.length; i++)
    {
      heads[i] = new ppl();
    }
  }
   
void draw()
  {
    background (255);
    for (int i=0; i<heads.length;i++)
    {
      heads[i].shake();
      heads[i].show();
      heads[i].close();
    }
    fill(0);
    ellipse (mouseX,mouseY,50,50);
  }

class ppl
  {
    int myX;
    int myY;
    int myColor;
     
    ppl()
     {
       myColor = color((int)(Math.random()*245)+10,(int)(Math.random()*245)+10,(int)(Math.random()*245)+10);
       myX = (int) (Math.random()*1000);
       myY = (int) (Math.random()*1000);
     }
     
    void show()
    {
      fill(myColor);
      ellipse (myX, myY, 50, 50);
    }
    
    void close()
    {
      if (dist(mouseX,mouseY, myX,myY) < 50)
      {
        if (myX > mouseX)
        {
          myX += (int) (Math.random()*40)-1;
        }
        if (myY > mouseY)
        {
          myY += (int) (Math.random()*40)-1;
        }
        if (myX < mouseX)
        {
          myX -= (int) (Math.random()*40)-1;
        }
        if (myY < mouseY)
        {
          myY -= (int) (Math.random()*40)-1;
        }
      }
    }

    void shake()
    {
      myX= myX + (int) (Math.random()*9)-4;
    }
  }
