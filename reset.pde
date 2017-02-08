void reset()
{
  thePlayer = new Player(WIDTH-10-15);
  d=0;
  m=0;
  reset=0;
  reset1=0;
playerNotHit = true;
   finalscore=0;
  for(int i=0;i< 120; i++)
  {
    invaders[i]=0;
  }
  
  for(int i =0;i<120;i++)
{
  invaders[i]=0;
}
  canShoot = true;
  
    aliensDead = 0;

  x = 0;
  y = 0;
  interval=0;
}