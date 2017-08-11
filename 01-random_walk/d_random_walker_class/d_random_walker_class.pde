// random walker class
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Random walker class for creating many walkers
// 1) create class
// 2) create a few objects
// 3) create more objects -> introduce ArrayList
// 4) for-loop: instance loop
// ---

float x0, y0;
ArrayList<RandomWalker> walkers = new ArrayList<RandomWalker>();

class RandomWalker{
  float x, y, xold, yold;
  float angle;
  float turning_rate = 0.1*TWO_PI;
  float step = 1.0;
  
  RandomWalker(float x0, float y0) {
    x = x0;
    y = y0;
  }
  
  void step() {
    xold = x;
    yold = y;
    angle += turning_rate * randomGaussian(); // random number from Gaussian (mean=0, std=1)
    x += step*cos(angle);
    y += step*sin(angle);
  }
  
  void display() {
    stroke(255); // white stroke
    line(xold,yold, x, y); // line from xold,yold to x,y
  }
}

void setup () {
  size(800, 800);
  background(0);
  x0 = width/2;
  y0 = height/2;
  int num_walkers = 100;
  for (int i=0; i<num_walkers; i++) {
    walkers.add(new RandomWalker(x0, y0));
  }
  
}

void draw () {
  for (RandomWalker walker : walkers) {
    walker.step();
    walker.display();
  }
}