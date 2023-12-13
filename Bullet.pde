class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getDirection();
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 9, 9); 
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
