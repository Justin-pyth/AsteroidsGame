class Spaceship extends Floater{
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0}; 
    myCenterX = myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = color((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*361;
    myCenterX = Math.random()*501;
    myCenterY = Math.random()*501;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
