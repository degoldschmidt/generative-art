// The Flock (a list of Boid objects)

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids

  Flock(int number) {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    for (int i = 0; i < number_of_boids; i++) {
       this.addBoid(new Boid(width/2,height/2)); 
    }
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }

}