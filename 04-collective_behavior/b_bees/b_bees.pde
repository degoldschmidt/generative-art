Hive hive;
ArrayList<Flower> flowers = new ArrayList<Flower>();
int number_of_bees = 20;
int number_of_flowers;
float b = 50;

void setup() {
  size(800, 800);
  frameRate(50);
  hive = new Hive(number_of_bees, width/2, height/2);
  number_of_flowers = 30;
  for(int i=0;i<number_of_flowers;i++) flowers.add(new Flower(b+random(width-2*b),b+random(height-2*b)));
}

void draw() {
  background(150-3*number_of_flowers, 40+number_of_flowers,0);
  hive.run();
  for(Bee bee : hive.bees) println(bee.counter);
  for(Flower flower : flowers) flower.run(hive.bees);
}

// Add a new boid into the System
//void mousePressed() {
//  hive.addBoid(new Boid(mouseX,mouseY));
//}