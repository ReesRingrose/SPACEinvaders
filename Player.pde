class  Player {
  float xpos;  
  float ypos;    
  float dx = 1.9;
  int lives;
  

  color  paddlecolor  =  color(80, 200, 70);  
  Player(int  screen_y) {  
    
    xpos  =  WIDTH/2;  
    ypos  =  screen_y;
  }  

  void  move(int  x) {  
    if (x  >  WIDTH-50)  
    {
      xpos  =  WIDTH-50;
    } else
    {
      xpos=x;
    }
  }    

  void draw() {  
    image(Spaceship, xpos, (ypos-20));
  }
}
