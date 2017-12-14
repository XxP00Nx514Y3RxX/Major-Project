class Asteroid {
  boolean AsteroidMoving = false;
  float AsteroidX, AsteroidY, AsteroidSize, AsteroidSpeed;
  
  Asteroid(){
    AsteroidX = width/2;
    AsteroidY = height/2;
    AsteroidSize = 50;
    AsteroidSpeed = .5;
  }
  
  void displayAsteroid(){
    fill(50);
    ellipse(AsteroidX, AsteroidY, AsteroidSize, AsteroidSize);
  }
  
  void moveAsteroid(){
    AsteroidX = AsteroidX + AsteroidSpeed;
    AsteroidY = AsteroidY + AsteroidSpeed;
  }
}