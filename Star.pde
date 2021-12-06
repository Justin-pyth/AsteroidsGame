class Star{
 private int myX, myY, myColor;
 public Star(){
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
   myColor = color((int)(Math.random()*256),
                   (int)(Math.random()*256),
                   (int)(Math.random()*256));
 }
 public void show(){
   fill(myColor);
   stroke(myColor);
   star(myX,myY,1,4,5);
 }
 
  public void star(float x, float y, float radius1, float radius2, int npoints) {
    float angle = TWO_PI / npoints;
    float halfAngle = angle/2.0;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * radius2;
      float sy = y + sin(a) * radius2;
      vertex(sx, sy);
      sx = x + cos(a+halfAngle) * radius1;
      sy = y + sin(a+halfAngle) * radius1;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}
