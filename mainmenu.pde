void mainMenu()
{
  
  do 
  {
    
    image(menuimage, 0, 0);
   menuimage.resize(700, 700);
    if(keyPressed == true)
  {
    menu=false;
  }

  }
  while(menu==true);
}