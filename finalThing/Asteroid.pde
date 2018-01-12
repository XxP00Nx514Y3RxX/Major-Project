class Asteroid {
  PVector AsteroidLocation, AsteroidVelocity, AsteroidAcceleration, AsteroidDirection;
  boolean AsteroidMoving = false;
  float AsteroidX, AsteroidY, AsteroidSize, AsteroidSpeed, direction;
  
  Asteroid(){
    AsteroidX = 0;
    AsteroidY = 0;
    AsteroidSize = 50;
    AsteroidLocation = new PVector(width/2, height/2);
    AsteroidVelocity = new PVector(0, 0);
    AsteroidAcceleration = new PVector(0, 0);
    AsteroidDirection = new PVector(0, -1);
  }
  
  void destroyAsteroid(){
    if (DestroyedAsteroid == true){
        
    }
  }
  
  void displayAsteroid(){
    
    destroyAsteroid(){
        
    }
    
    ellipseMode(CENTER);
    pushMatrix();
      fill(255);
      translate(AsteroidLocation.x, AsteroidLocation.y);
      rotate(AsteroidDirection.heading());
      ellipse(AsteroidX, AsteroidY, AsteroidSize, AsteroidSize);
    popMatrix();
  }
  
  void moveAsteroid(){
    if (AsteroidLocation.x > width+AsteroidSize){
      AsteroidLocation.x = 0-AsteroidSize;
    }
    else if (AsteroidLocation.y > height+AsteroidSize){
      AsteroidLocation.y = 0-AsteroidSize;
    }
    else if (AsteroidLocation.x < 0-AsteroidSize){
      AsteroidLocation.x = width+AsteroidSize;
    }
    else if (AsteroidLocation.y < 0-AsteroidSize){
      AsteroidLocation.y = height+AsteroidSize;
    }
    AsteroidLocation.add(AsteroidVelocity);
    AsteroidVelocity.add(AsteroidAcceleration.x/25, AsteroidAcceleration.y/25);
    AsteroidAcceleration.set(0, 0);
    AsteroidVelocity.div(1.1);
    PVector AsteroidThrust = new PVector();
    AsteroidThrust = AsteroidDirection.copy();
    AsteroidThrust.normalize();
    AsteroidThrust.mult(2);
    AsteroidAcceleration = AsteroidThrust;
  }
}