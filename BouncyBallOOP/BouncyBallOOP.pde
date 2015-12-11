Ball b;                //declare a new ball called b
Ball b2;

void setup() {
  size(800, 600);
  b = new Ball();      //initialize b as a new object of the Ball class
  b2 = new Ball(25, 2, 6, color(0, 255, 0));
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  b2.display();
  b.move();
  b2.move();
  b.bounce();
  b2.bounce();
}