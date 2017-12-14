class SpaceShip {
  
  boolean SpaceShipMovingUp, SpaceShipMovingDown, SpaceShipMovingLeft, SpaceShipMovingRight;
  float SpaceShipX, SpaceShipY, SpaceShipSize, SpaceShipSpeed;
  
  SpaceShip(){
    SpaceShipX = width/2;
    SpaceShipY = height/2;
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
    fill(255);
    ellipse(SpaceShipX, SpaceShipY, SpaceShipSize, SpaceShipSize);
  }
  
  void moveSpaceShip(){
    if (SpaceShipMovingUp == true){
      SpaceShipY = SpaceShipY + SpaceShipSpeed;
    }
    else if (SpaceShipMovingDown == true){
      
    }
    if (keyPressed == true){
      if (key == 'w'){
        SpaceShipMovingUp = true;
      }
      else if (key == 's'){
        SpaceShipMovingDown = true;
      }
      
      if (key == 'a'){
        SpaceShipMovingLeft = true;
        //rotate(PI/ 3.0);
      }
      else if (key == 'd'){
        SpaceShipMovingRight = true;
      } 
    }
    else if (SpaceShipMovingUp == true && SpaceShipMovingRight == true){
      SpaceShipY = SpaceShipY + SpaceShipSpeed;
      //rotate it too
    }
    else if (SpaceShipMovingUp == true && SpaceShipMovingLeft == true){
      SpaceShipY = SpaceShipY + SpaceShipSpeed;
      //rotate it too
    }
  }
  
}