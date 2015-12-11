class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 100;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(255, 0, random(100));
    vel = new PVector(random(-3, 5), random(-3, 5));
  }

  Ball(int tDiam, float tMinVel, float tMaxVel, color tC) {
    diam = tDiam;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));  
    c = tC;
    vel = new PVector(random(tMinVel,tMaxVel),random(tMinVel,tMaxVel));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);
  }
  void bounce(){
     if (loc.x >= width-diam/2 || loc.x <= 0+diam/2) {
      vel.x *= -.95;
    }
    if (loc.y >= height-diam/2 || loc.y <= 0+diam/2) {
      vel.y *= -.95;
    }
  }
}