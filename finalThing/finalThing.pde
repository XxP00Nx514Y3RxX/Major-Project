SpaceShip Bartholomew;
Asteroid DwaneJ;
SpaceShipBlaster Pew;

void setup(){
  size(500, 500);//fullScreen();
  Bartholomew = new SpaceShip();
  DwaneJ = new Asteroid();      
  Pew = new SpaceShipBlaster(); 
}

void draw(){
  println(Pew.BlasterLocation);
  background(50);
  Pew.displayBlaster();
  Pew.shootBlaster();
  DwaneJ.displayAsteroid();
  DwaneJ.moveAsteroid();
  Bartholomew.displaySpaceShip();
  Bartholomew.moveSpaceShip();
}