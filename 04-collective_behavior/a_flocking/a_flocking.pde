Flock flock;

int number_of_boids = 100;

void setup() {
  size(800, 800);
  flock = new Flock(number_of_boids);
}

void draw() {
  background(50);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY));
}