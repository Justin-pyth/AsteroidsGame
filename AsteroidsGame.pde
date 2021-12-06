Star[] stars;
Spaceship space;
ArrayList <Asteroids> asteroids;
public void setup(){
  size(500,500);
  background(0);
  stars = new Star[75];
  space = new Spaceship();
  asteroids = new ArrayList <Asteroids>();
  for (int j = 0; j < 10; j++){
    asteroids.add(new Asteroids());
  }
  for (int i = 0; i <75; i++){
    stars[i] = new Star();
  }
}
public void draw() {
  background(0); 
  for (int l = 0; l < 75; l++){
    stars[l].show();
  }
  for (int m = 0; m < asteroids.size(); m++){
    asteroids.get(m).move();
    asteroids.get(m).show();
    if (dist((float)(asteroids.get(m).getCenterX()),(float)(asteroids.get(m).getCenterY()),(float)(space.getCenterX()),(float)(space.getCenterY())) < 20){
      asteroids.remove(m);
      asteroids.add(new Asteroids());
    }
  }
  space.move();
  space.show();
  if (keyPressed){
    if (key == 'a' || key == 'A'){
      space.turn(-10);
    }
    else if (key == 'd' || key == 'D'){
      space.turn(10);
    }
    else if (key == 'w' || key == 'W'){
      space.accelerate(0.1);
    }
    else if (key == 's' || key == 'S'){
      space.accelerate(-0.1);
    }
    else if (key=='h' || key == 'H'){
      space.hyperspace();
    }
  }
}
 
