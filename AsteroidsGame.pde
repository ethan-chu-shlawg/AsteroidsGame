Spaceship jit;
Star[] stars;
ArrayList <Asteroids> yap;
ArrayList <Bullet> yip;
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
  size(600,600);
  jit = new Spaceship();
  yip = new ArrayList <Bullet>();
  yap = new ArrayList<Asteroids>();
  for(int i = 0; i < 400; i++)
    yap.add(new Asteroids());
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
  for(int i = 0; i < yip.size(); i++){
    yip.get(i).show();
    yip.get(i).move();
  }
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i < yap.size(); i++){
    yap.get(i).show();
    yap.get(i).move();
  }
  for(int i = 0; i < yap.size(); i++){
    float d = dist(yap.get(i).getMyCenterX(), yap.get(i).getMyCenterY(),
                    jit.getMyCenterX(),jit.getMyCenterY());
    if(d < 20){
      yap.remove(i);
    }
  }
  for(int j = 0; j < yap.size(); j++){
    float d = 0;
    for(int i = 0; i < yip.size(); i++){
       d = dist(yap.get(j).getMyCenterX(), yap.get(j).getMyCenterY(),
                 yip.get(i).getX(), yip.get(i).getY());
        if(d < 30){
          yap.remove(j);
          yip.remove(i);
          break;
        }
    }
    if(d < 30)
      break;
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
  if(key == ' '){
    yip.add(new Bullet(jit));
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
