Hive hive;

int number_of_bees = 100;

void setup() {
  size(800, 800);
  hive = new Hive(number_of_bees);
  
}

void draw() {
  background(50);
  hive.run();
}

// Add a new boid into the System
//void mousePressed() {
//  hive.addBoid(new Boid(mouseX,mouseY));
//}