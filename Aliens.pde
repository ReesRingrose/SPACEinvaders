class Aliens {
  int xpos;
  Bomb bombs;
  PImage myimage1;
  PImage myimage2;
  int ypos;
  boolean direction;
  int dx;
  boolean explode;
  int finished;
  int limit;
  boolean hasBomb = false;
  int pixelsize1 = 10;
  float r;

  Aliens(int x, int y, PImage myimage1, PImage myimage3) {
    xpos = x;
    ypos = y;

    myimage1 = myimage;
    myimage2 = myimage3;
    direction = true;
    dx = 1;
    explode = false;
    finished = alive;
  }

  void move() {
    r = random(10000);

    if (r >= 9990) {
      hasBomb = true;
      bombs = new Bomb (xpos, ypos, pixelsize, pixelsize1);
    }

    if (direction && xpos+awidth<WIDTH) {
      xpos = xpos + dx;
      return;
    }
    if (direction && xpos+awidth==WIDTH) {
      ypos = ypos +aheight;
      direction = false;
      return;
    }

    if (direction == false && xpos>0)
    {
      xpos = xpos - dx;
      return;
    }
    if (direction == false && xpos == 0) {
      ypos = ypos + aheight;
      direction = true;
      return;
    }
  }
  void draw(int xpos, int ypos) {
    if (explode == false) {

      image(myimage, xpos, ypos);
    } else {

      finished++;
      image(myimage2, xpos, ypos);
     
      
    // aliensDead++;
    }
  }

  void explode() {

    explode = true;
    hasBomb = false;
  //aliensDead++;
  lives();
    finished++;
    
  }
  
  void lives() {
    
    //aliensDead++;
    for(int i=0; i<120;i++)
    {
      if(invaders[i]==1)
      {
        aliensDead++;
        
      }
    }
    if(aliensDead== 120)
        {
          aliensDead=120;
          finalscore=finalscore+aliensDead;
        }
        else
        {
          aliensDead=0;
        }
  }
}