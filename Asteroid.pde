class Asteroids extends Floater{
 private double rotSpeed;
 Asteroids(){
   rotSpeed = Math.random()*11-5;
   corners = 6;
   xCorners = new int[6];
   yCorners = new int[6];
   for (int i = 0 ; i < 6; i++){
     if (i == 0 || i == 2){ 
       xCorners[i] = (int)(Math.random()*15+6);
     }
     else if (i == 1){
       xCorners[i] = (int)(Math.random()*15+10);
     }
     else if (i == 3 || i == 5){
       xCorners[i] = (int)(Math.random()*15+6)*(-1); 
     }
     else{
       xCorners[i] = (int)(Math.random()*15+10)*(-1);
     }
   }
   for (int j= 0; j < 6; j++){
     if (j == 0 || j == 5){
       yCorners[j] = (int)(Math.random()*15+10)*(-1); 
     }
     else if(j == 1 || j == 4){
       yCorners[j] = 0;
     }
     else if( j ==2 || j == 3) {
       yCorners[j] = (int)(Math.random()*15+10);
     }
   }
   myCenterX = Math.random()*501;
   myCenterY = Math.random()*501;
   myXspeed = Math.random()*5-3;
   myYspeed = Math.random()*5-3;
   myPointDirection = Math.random()*361;
   myColor = color(255);

  }
 public void move(){
   turn(rotSpeed);
   super.move();
 }
 
 public double getCenterX(){
   return myCenterX;
 }
 public double getCenterY(){
   return myCenterY;
 }
 
 public void show (){  //Draws the floater at the current position               
    fill(0);   
    stroke(255);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}
