Star[] stars;
Spaceship space;
public void setup(){
  size(500,500);
  background(0);
  stars = new Star[100];
  space = new Spaceship();
  for (int i = 0; i <100; i++){
    stars[i] = new Star();
  }
}
public void draw() {
  background(0);
  for (int i = 0; i < 100; i++){
    stars[i].show();
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
 

