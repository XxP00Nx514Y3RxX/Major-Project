class SpaceShipBlaster{
  PVector BlasterLocation, BlasterVelocity, BlasterAcceleration, BlasterDirection;
  float BlasterXStart, BlasterXEnd, BlasterYStart, BlasterYEnd;
  boolean BlasterMoving = false;
  
  SpaceShipBlaster(){
    BlasterXStart = 0;
    BlasterYStart = 0;
    BlasterXEnd = BlasterXStart;// + 10;
    BlasterYEnd = BlasterYStart - 50;// + 10;
    BlasterLocation = new PVector(width/2, height/2);//Bartholomew.SpaceShipLocation.x, Bartholomew.SpaceShipLocation.y);
    BlasterVelocity = new PVector(0,0);
    BlasterAcceleration = new PVector(0, 0);
    BlasterDirection = new PVector(0, -1);
  }
  
  void displayBlaster(){
    if (BlasterLocation.y > height){
      BlasterLocation.x = Bartholomew.SpaceShipLocation.x;
      BlasterLocation.y = Bartholomew.SpaceShipLocation.y;
      BlasterMoving = false;
    }
    if (BlasterLocation.y < 0){
      BlasterLocation.x = Bartholomew.SpaceShipLocation.x;
      BlasterLocation.y = Bartholomew.SpaceShipLocation.y;
      BlasterMoving = false;
    }
    if (BlasterLocation.x > width){
      BlasterLocation.x = Bartholomew.SpaceShipLocation.x;
      BlasterLocation.y = Bartholomew.SpaceShipLocation.y;
      BlasterMoving = false;
    }
    if (BlasterLocation.x < 0){
      BlasterLocation.x = Bartholomew.SpaceShipLocation.x;
      BlasterLocation.y = Bartholomew.SpaceShipLocation.y;
      BlasterMoving = false;
    }
    pushMatrix();
      translate(BlasterLocation.x, BlasterLocation.y);
      rotate(BlasterDirection.heading()+radians(90));
      //BlasterXStart = Bartholomew.SpaceShipLocation.x;
      //BlasterYStart = Bartholomew.SpaceShipLocation.y;
      //BlasterXEnd = BlasterXStart;
      //BlasterYEnd = BlasterYStart - 100;
      line(BlasterXStart, BlasterYStart, BlasterXEnd, BlasterYEnd);
    popMatrix();
  }  
  
  void shootBlaster(){
    //BlasterYStart = BlasterYStart - 10;
    //BlasterYEnd = BlasterYEnd - 10;
    if (BlasterMoving == true){
      BlasterLocation.add(BlasterVelocity);
      BlasterVelocity.add(BlasterAcceleration.x/5, BlasterAcceleration.y/5);
      BlasterAcceleration.set(0, 0);
      BlasterVelocity.div(1.1);
      PVector BlasterThrust = new PVector();
      BlasterThrust = BlasterDirection.copy();
      BlasterThrust.normalize();
      BlasterThrust.mult(2);
      BlasterAcceleration = BlasterThrust;
    }
  }
}