Spaceship jit;
Star[] stars;
boolean wIsPressed;
boolean aIsPressed;
boolean dIsPressed;
public void setup() 
{
  stars = new Star[200];
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  frameRate(60);
  size(300,300);
  jit = new Spaceship();
}
public void draw() 
{
  background(0);
  jit.show();
  jit.move();
  if(aIsPressed == true)
    jit.turn(-5);
  if(wIsPressed == true)
    jit.accelerate(0.07);
  if(dIsPressed == true)
    jit.turn(5);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
}
public void keyPressed(){
  if(key == 'a'){
    aIsPressed = true;
  }
  if(key == 'w'){
    wIsPressed = true;
  }
  if(key == 'd'){
    dIsPressed = true;
  }
  if(key == 's'){
    jit.Hyperspace();
  }
}

public void keyReleased(){
  if(key == 'a'){
    aIsPressed = false;
  }
  if(key == 'w'){
    wIsPressed = false;
  }
  if(key == 'd'){
    dIsPressed = false;
  }
}
