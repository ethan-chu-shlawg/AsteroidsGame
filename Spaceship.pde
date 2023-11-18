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
    myCenterX = 150;
    myCenterY = 150;
  }
  public void Hyperspace(){
    myCenterX = Math.random()*300;
    myCenterY = Math.random()*300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*361;
  }
}
