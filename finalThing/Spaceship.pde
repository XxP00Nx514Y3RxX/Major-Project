class SpaceShip {
  
  PVector SpaceShipLocation, SpaceShipVelocity, SpaceShipAcceleration, SpaceShipDirection;
  boolean SpaceShipMovingUp, SpaceShipMovingDown, SpaceShipMovingLeft, SpaceShipMovingRight;
  float SpaceShipX, SpaceShipY, SpaceShipSize, SpaceShipSpeed, direction;
  
  SpaceShip(){
    SpaceShipX = 0;
    SpaceShipY = 0;
    SpaceShipSize = 50;
    SpaceShipSpeed = 1;
  }
  
  void displaySpaceShip(){
    //moveSpaceShip();
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
    fill(255);
    translate(width/2, height/2);
    translate(SpaceShipX, SpaceShipY);
    rotate(direction);
    ellipse(0, 0, SpaceShipSize+10, SpaceShipSize);
  }
  
  void moveSpaceShip(){
    if (keyPressed == true){
      if (key == 'w'){
        SpaceShipMovingUp = true;
      }
      else if (key == 's'){
        SpaceShipMovingDown = true;
      }
      //made for rotating 
      if (key == 'a'){
        SpaceShipMovingLeft = true;
        direction = direction - 0.1;
        //rotate(direction);
      }
      //made for rotating
      else if (key == 'd'){
        SpaceShipMovingRight = true;
        direction = direction + 0.1;
        //rotate(direction);
      } 
    }
    else{
      SpaceShipMovingUp = false;
      SpaceShipMovingDown = false;
      SpaceShipMovingLeft = false;
      SpaceShipMovingRight = false;
    }
    //you can only move forward and backward
    if (SpaceShipMovingUp == true){
      SpaceShipY = SpaceShipY + SpaceShipSpeed;
    }
    else if (SpaceShipMovingDown == true){
      SpaceShipY = SpaceShipY - SpaceShipSpeed/2;
    }
    else if (SpaceShipMovingUp == true && SpaceShipMovingRight == true){
      SpaceShipY = SpaceShipY + SpaceShipSpeed;
      direction = direction + 0.1;
      //rotate it too
    }
    else if (SpaceShipMovingUp == true && SpaceShipMovingLeft == true){
      SpaceShipY = SpaceShipY + SpaceShipSpeed;
      direction = direction - 0.1;
      //rotate it too
    }
    else if (SpaceShipMovingDown == true && SpaceShipMovingRight == true){
      SpaceShipY = SpaceShipY - SpaceShipSpeed;
      direction = direction + 0.1;
      //rotate it too
    }
    else if (SpaceShipMovingDown == true && SpaceShipMovingLeft == true){
      SpaceShipY = SpaceShipY - SpaceShipSpeed;
      direction = direction - 0.1;
      //rotate it too
    }
  }
  
}