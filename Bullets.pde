class Bullets extends Floater{
  public Bullets(Spaceship theShip){
   myCenterX = theShip.getCenterX();
   myCenterY = theShip.getCenterY();
   myXspeed = theShip.getXspeed();
   myYspeed = theShip.getYspeed();
   myPointDirection = theShip.getPointDirection();
   myColor = color(255);
   this.accelerate(6.0);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void move (){   //move the floater in the current direction of travel      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 600;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = 600;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 600;    
    } 
    else if (myCenterY < 0)
    {     
      myCenterY = 600;    
    }   
  }   
}
