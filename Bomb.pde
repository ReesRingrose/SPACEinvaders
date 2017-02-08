class Bomb {
  int xpos;
  int ypos;
  
  
  Bomb(int x, int y, int pixelsize, int pixelsize1){
    
    xpos = x;
    ypos = y;
    
   }
  
 void draw() {
     fill(200, 100, 20);
   rect(xpos, ypos, 10,10 );
 
 }
 
 void move() {
   
   ypos += 10 ;
 }
 
boolean offScreen() {
  
  if(ypos >= 0){
  return false;
  
  }
  return true;
}

boolean collide(Player thePlayer){
  
    if ((xpos >=  thePlayer.xpos) &&  
        (xpos <=  thePlayer.xpos+50) && 
        (ypos <= thePlayer.ypos+30) &&
        (ypos+aheight >= thePlayer.ypos)){
          
       playerNotHit = false;
          
          return true;
      }
      
      return false;
    }

  
}