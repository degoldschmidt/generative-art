// colored walkers
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Creating many walkers with different stroke colors and widths
// 1) create colors
// 2) create stroke widths
// 3) width dependent on distance
// 4) create infinite loop
// ---

float x0, y0;
ArrayList<RandomWalker> walkers = new ArrayList<RandomWalker>();

void setup () {
  size(800, 800);
  background(0);
  x0 = width/2;
  y0 = height/2;
  int num_walkers = 1000;
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