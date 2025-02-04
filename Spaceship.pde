class Spaceship extends Floater{
  public Spaceship(){
    corners = 3; 
    xCorners = new int[corners];
    yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor=255;
    myCenterX = 300;
    myCenterY = 300;
  }
  public void Hyperspace(){
    myCenterX = (float)(Math.random()*600);
    myCenterY = (float)(Math.random()*600);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*361;
  }
  public float getMyCenterX(){
    return (float)myCenterX;
  }
  public float getMyCenterY(){
    return (float)myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getDirection(){
    return myPointDirection;
  }
}
