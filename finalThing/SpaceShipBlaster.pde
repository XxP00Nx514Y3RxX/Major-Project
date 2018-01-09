class SpaceShipBlaster{
  
  float BlasterXStart, BlasterXEnd, BlasterYStart, BlasterYEnd;
  
  SpaceShipBlaster(){
    BlasterXStart = Bartholomew.SpaceShipLocation.x;
    BlasterYStart = Bartholomew.SpaceShipLocation.y;
    BlasterXEnd = BlasterXStart + 10;
    BlasterYEnd = BlasterYStart + 10;
  }
  
  void displayBlaster(){
    //rotate(Bartholomew.SpaceShipDirection.heading());
    BlasterXStart = Bartholomew.SpaceShipLocation.x;
    BlasterYStart = Bartholomew.SpaceShipLocation.y;
    BlasterXEnd = BlasterXStart;
    BlasterYEnd = BlasterYStart - 100;
    line(BlasterXStart, BlasterYStart, BlasterXEnd, BlasterYEnd);
  }
}