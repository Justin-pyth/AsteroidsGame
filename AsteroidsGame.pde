Star[] stars;
Spaceship space;
ArrayList <Asteroids> ast;
ArrayList <Bullets> bull;

public void setup(){
  size(500,500);
  background(0);
  stars = new Star[75];
  space = new Spaceship();
  ast = new ArrayList <Asteroids>();
  bull = new ArrayList <Bullets>();
  for (int j = 0; j < 10; j++){
    ast.add(new Asteroids());
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
  for (int m = 0; m < ast.size(); m++){
    ast.get(m).move();
    ast.get(m).show();
    if (dist((float)(ast.get(m).getCenterX()),(float)(ast.get(m).getCenterY()),(float)(space.getCenterX()),(float)(space.getCenterY())) < 20){
      ast.remove(m);
      ast.add(new Asteroids());
    }
  }
  for (int p = 0; p < bull.size(); p++){
    for (int t = 0; t < ast.size(); t++){
      if (dist((float)(ast.get(t).getCenterX()),(float)(ast.get(t).getCenterY()),(float)(bull.get(p).getCenterX()),(float)(bull.get(p).getCenterY())) < 25){
        bull.remove(p);
        ast.remove(t);
        ast.add(new Asteroids());
        break;
      }
    }
  }
  space.move();
  space.show();
  for (int p = 0; p < bull.size(); p++){
    bull.get(p).move();
    bull.get(p).show();
  }
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
  }
}

public void keyPressed(){
  if (key == ' '){
    bull.add(new Bullets(space));
  }  
  else if (key=='h' || key == 'H'){
    space.hyperspace();
  }
}
