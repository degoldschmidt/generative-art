// correlated random walk
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Random walk in 2D all directions (correlated angles)
// ---

float x, y, xold, yold;
float angle;
float turning_rate = 0.1*TWO_PI;
float step = 5.0;

void setup () {
  size(800, 800);
  background(0);
  x = width/2;
  y = height/2;
}

void draw () {
  xold = x;
  yold = y;
  stroke(255); // white stroke
  
  angle += turning_rate * randomGaussian(); // random number from Gaussian (mean=0, std=1)
  x += step*cos(angle);
  y += step*sin(angle);
  line(xold,yold, x, y); // at position x,y
}