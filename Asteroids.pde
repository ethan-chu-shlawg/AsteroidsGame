class Asteroids extends Floater{
  private int rotSpeed;
  public Asteroids(){
    rotSpeed = (int)(Math.random()*8-8);
    corners = 6; 
    xCorners = new int[corners];
    yCorners = new int[corners];
      xCorners[0] = -11;
      yCorners[0] = -8;
      xCorners[1] = 7;
      yCorners[1] = -8;
      xCorners[2] = 11;
      yCorners[2] = 0;
      xCorners[3] = 0;
      yCorners[3] = 10;
      xCorners[4] = -11;
      yCorners[4] = 8;
      xCorners[5] = -13;
      yCorners[5] = 0;
    myXspeed = Math.random()*3-1;
    myYspeed = Math.random()*3-1;
    myPointDirection = 0;
    myColor=100;
    myCenterX = (int)(Math.random()*600);;
    myCenterY = (int)(Math.random()*600);;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  public float getMyCenterY(){
    return (float)myCenterY;
  }
}
