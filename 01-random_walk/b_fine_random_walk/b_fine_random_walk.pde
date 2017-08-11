// fine random walk
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Random walk in 2D all directions
// ---

float x, y, xold, yold;
float angle;
float step = 10.;
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
  
  angle = random(0,TWO_PI); // random angle [0,2*pi]
  x += step*cos(angle);
  y += step*sin(angle);
  line(xold,yold, x, y); // at position x,y
}