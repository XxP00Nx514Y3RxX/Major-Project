class SpaceShip {
  
  PVector SpaceShipLocation, SpaceShipVelocity, SpaceShipAcceleration, SpaceShipDirection;
  boolean SpaceShipMovingUp, SpaceShipMovingDown, SpaceShipMovingLeft, SpaceShipMovingRight;
  float SpaceShipX, SpaceShipY, SpaceShipSize, SpaceShipSpeed, direction;
  
  SpaceShip(){
    SpaceShipX = 0;
    SpaceShipY = 0;
    SpaceShipSize = 50;
    SpaceShipLocation = new PVector(width/2, height/2);
    SpaceShipVelocity = new PVector(0,0);
    SpaceShipAcceleration = new PVector(0, 0);
    SpaceShipDirection = new PVector(0, -1);
  }
  
  void displaySpaceShip(){
    if (SpaceShipY > height + SpaceShipSize/2){
      SpaceShipY = SpaceShipY - height - SpaceShipSize;
    }
    if (SpaceShipX > width + SpaceShipSize/2){
      SpaceShipX = SpaceShipX - width - SpaceShipSize;
    }
    if (SpaceShipY < 0 - SpaceShipSize/2){
      SpaceShipY = SpaceShipY + height + SpaceShipSize;
    }
    if (SpaceShipX < 0 - SpaceShipSize/2){
      SpaceShipX = SpaceShipX + width + SpaceShipSize;
    }
    ellipseMode(CENTER);
    pushMatrix();
      fill(255);
      translate(SpaceShipLocation.x, SpaceShipLocation.y);
      rotate(SpaceShipDirection.heading());
      ellipse(0, 0, SpaceShipSize+10, SpaceShipSize);
    popMatrix();
  }
  
  void moveSpaceShip(){
    if (SpaceShipLocation.x > width+SpaceShipSize){
      SpaceShipLocation.x = 0-SpaceShipSize;
    }
    else if (SpaceShipLocation.y > height+SpaceShipSize){
      SpaceShipLocation.y = 0-SpaceShipSize;
    }
    else if (SpaceShipLocation.x < 0-SpaceShipSize){
      SpaceShipLocation.x = width+SpaceShipSize;
    }
    else if (SpaceShipLocation.y < 0-SpaceShipSize){
      SpaceShipLocation.y = height+SpaceShipSize;
    }
    SpaceShipLocation.add(SpaceShipVelocity);
    SpaceShipVelocity.add(SpaceShipAcceleration.x/5, SpaceShipAcceleration.y/5);
    SpaceShipAcceleration.set(0, 0);
    SpaceShipVelocity.div(1.1);
    if (keyPressed == true){
      if (key == 'w'){
        PVector SpaceShipThrust = new PVector();
        SpaceShipThrust = SpaceShipDirection.copy();
        SpaceShipThrust.normalize();
        SpaceShipThrust.mult(2);
        SpaceShipAcceleration = SpaceShipThrust;
      }
      if (key == 'a'){
        SpaceShipDirection.rotate(-0.1);
      }
      else if (key == 'd'){
        SpaceShipDirection.rotate(0.1);
      }
      //i have no idea how to make it reverse slower so im just making it no available
      else if (key == 's'){
        PVector SpaceShipThrust = new PVector();
        SpaceShipThrust = SpaceShipDirection.copy();
        SpaceShipThrust.normalize();
        SpaceShipThrust.mult(2);
        SpaceShipAcceleration = SpaceShipThrust;
      }
    }
  }
}