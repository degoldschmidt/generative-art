// The Hive (a list of Bees objects)

class Hive {
  ArrayList<Bee> bees; // An ArrayList for all the boids

  Hive(int number, float x0, float y0) {
    bees = new ArrayList<Bee>(); // Initialize the ArrayList
    for (int i = 0; i < number; i++) {
       this.addBee(new Bee(x0,y0)); 
    }
  }

  void run() {
    for (Bee b : bees) {
      b.run(bees);  // Passing the entire list of bees to each bee individually
    }
  }

  void addBee(Bee b) {
    bees.add(b);
  }

}