class Bullet {
  float x, y;

  Bullet(float xpos, float ypos) {
    x = xpos + (gridsize/2 - 4);
    y = ypos-20;
  }

  void draw() {
    fill(50, 200, 200);
    rect(x-12, y, pixelsize, pixelsize);
  }
  void move() {

    y -= pixelsize;
  }
  void  collide(Aliens[] alienArray) {

    for (int i = 0; i < alienArray.length; i++) {

      if ((x-12 >=  alienArray[i].xpos) &&  
        (x-12   <=  alienArray[i].xpos+awidth) &&  
        (y  <= alienArray[i].ypos+aheight) &&  
        (y  >=  alienArray[i].ypos))
        { 
         
        invaders[i]=1;
        alienArray[i].explode();
      
       
      }
    }
    
  }
}