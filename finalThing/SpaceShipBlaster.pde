class SpaceShipBlaster{
  //PVector BlasterLocation, BlasterVelocity, BlasterAcceleration, BlasterDirection;
  float BlasterXStart, BlasterXEnd, BlasterYStart, BlasterYEnd;
  
  SpaceShipBlaster(){
    BlasterXStart = 0;
    BlasterYStart = 0;
    BlasterXEnd = BlasterXStart;// + 10;
    BlasterYEnd = BlasterYStart - 50;// + 10;
    //BlasterLocation = new PVector(Bartholomew.SpaceShipLocation.x, Bartholomew.SpaceShipLocation.y);
  }
  
  void displayBlaster(){
    //if (BlasterLocation.y > height){
    //  BlasterLocation.y = 0;
    //}
    //if (SpaceShipX > width + SpaceShipSize/2){
    //  SpaceShipX = SpaceShipX - width - SpaceShipSize;
    //}
    //if (SpaceShipY < 0 - SpaceShipSize/2){
    //  SpaceShipY = SpaceShipY + height + SpaceShipSize;
    //}
    //if (SpaceShipX < 0 - SpaceShipSize/2){
    //  SpaceShipX = SpaceShipX + width + SpaceShipSize;
    //}
    pushMatrix();
      translate(Bartholomew.SpaceShipLocation.x, Bartholomew.SpaceShipLocation.y);
      rotate(Bartholomew.SpaceShipDirection.heading()+radians(90));
      //BlasterXStart = Bartholomew.SpaceShipLocation.x;
      //BlasterYStart = Bartholomew.SpaceShipLocation.y;
      //BlasterXEnd = BlasterXStart;
      //BlasterYEnd = BlasterYStart - 100;
      line(BlasterXStart, BlasterYStart, BlasterXEnd, BlasterYEnd);
    popMatrix();
  }  
  
  void shootBlaster(){
    //BlasterXStart = BlasterXStart + 10;
    BlasterYStart = BlasterYStart - 10;
    //BlasterXEnd = BlasterXEnd + 10;
    BlasterYEnd = BlasterYEnd - 10;
  }
}