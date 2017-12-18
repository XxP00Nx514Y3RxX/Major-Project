SpaceShip Bartholomew;
Asteroid DwaneJ;

void setup(){
  size(500, 500);
  //fullScreen();
  Bartholomew = new SpaceShip();
  DwaneJ = new Asteroid();
}

void draw(){
  println(Bartholomew.SpaceShipY);
  background(0);
  DwaneJ.displayAsteroid();
  DwaneJ.moveAsteroid();
  Bartholomew.displaySpaceShip();
  Bartholomew.moveSpaceShip();
}