Star[] stars;
Spaceship space;
ArrayList <Asteroids> ast;
public void setup(){
  size(500,500);
  background(0);
  stars = new Star[100];
  space = new Spaceship();
  ast = new ArrayList <Asteroids>();
  for (int j = 0; j < 10; j++){
    ast.add(new Asteroids());
  }
  for (int i = 0; i <100; i++){
    stars[i] = new Star();
  }
}
public void draw() {
  background(0); 
  for (int l = 0; l < 100; l++){
    stars[l].show();
  }
  for (int m = 0; m < ast.size(); m++){
    ast.get(m).move();
    ast.get(m).show();
    if (dist((float)(ast.get(m).getCenterX()),(float)(ast.get(m).getCenterY()),(float)(space.getCenterX()),(float)(space.getCenterY())) < 20){
      ast.remove(m);
      ast.add(new Asteroids());
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
