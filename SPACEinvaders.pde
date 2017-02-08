int x, y,interval;
PImage myimage;
PImage myimage2;
PImage Spaceship;

int[] invaders;
int finalscore;
Bomb bomb;
Aliens[] alienArray;
Player thePlayer;
ArrayList<Bullet> bullets; 
boolean canShoot;
int finished;

boolean playerNotHit = true;
int aliensDead,level,d,m,reset,reset1;

void setup() {
  size(700, 700);        
  thePlayer = new Player(WIDTH-10-15);
  d=0;
  m=0;
  reset=0;
  reset1=0;
  invaders = new int[120];
  finalscore=0;
  for(int i=0;i< 120; i++)
  {
    invaders[i]=0;
  }
  myimage = loadImage("invader.GIF");
  myimage2 = loadImage("exploding.GIF");
  Spaceship = loadImage("Spaceship.png");
 

for(int i =0;i<120;i++)
{
  invaders[i]=0;
}
  canShoot = true;
  bullets = new ArrayList<Bullet>();
  alienArray = new Aliens[120];
  aliensDead = 0;

  x = 0;
  y = 0;
  interval=0;

}

void draw() {
  
  background(0);
if(d==0)
{
  level();
  d=1;
}
  thePlayer.move(mouseX);
  if (aliensDead == alienArray.length) {
      aliensDead=0;
      for(int i=0;i< 120; i++)
  {
    invaders[i]=0;
  }
  
    text("You Win", 180, 250);
    
    level();
    
  } else {
    if (playerNotHit == true) {
      for (int i = 0; i < alienArray.length; i++) {
        if (alienArray[i].finished <= dead) {

          alienArray[i].move();
          alienArray[i].draw(alienArray[i].xpos, alienArray[i].ypos);
          if (alienArray[i].hasBomb == true) {
            Bomb bomb = alienArray[i].bombs;
            if (bomb.collide(thePlayer) == false) {
              if (bomb.offScreen()==false) {

                bomb.draw();
                bomb.move();
              
                
              }
            }
          }
        }
      }
      thePlayer.draw();
      if (canShoot == true) {
        for (int i = 0; i < bullets.size (); i++) {
          Bullet bullet = bullets.get(i);

          bullet.move();
          bullet.draw(); 
          bullet.collide(alienArray);
       
        }
      }
    } else {  
      if(m==0)
      {
        
        for(int i=0; i<120;i++)
    {
      if(invaders[i]==1)
      {
        aliensDead++;
        
      }
    }
    finalscore=finalscore+aliensDead;
    m++;
      
      }
      

      text("Game Over", 170, 250);
    text(finalscore,312,251);
    text("final score :",248,250);
    reset=1;
    
      
    }
  }
}


void mousePressed() {

  canShoot = true;
  bullets.add( new Bullet(thePlayer.xpos, thePlayer.ypos));
  
  if(reset==1)
  {
   reset();
  }
}