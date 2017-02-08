void level()
{
  y=interval+0;
for (int i = 0; i < alienArray.length; i++) 
   {
     
     if(i % 5==0 && i < 30)
     {
       y=y+26;
       x=0;  
       
     }
     if(i ==30)
     {
       x=170;
       y =interval+0;
     }
     if(i % 5==0 && i >= 30 && i < 60)
     {
       y=y+26;
       x=170;  
       
     }
     
     if(i ==60)
     {
       x=330;
       y =interval+0;
     }
     
     if(i % 5==0 && i >= 60 && i < 90)
     {
       y=y+26;
       x=330;  
       
     }
     
     if(i ==90)
     {
       x=480;
       y =interval+0;
     }
     
     if(i % 5==0 && i >= 90)
     {
       y=y+26;
       x=480;  
       
     }
     
    
     x = x + awidth;
    alienArray[i] = new Aliens(x, y, myimage, myimage2);
    
  }
  interval=interval+26;
  
}