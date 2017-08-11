// random walker class from 1d

class RandomWalker{
  float x, y, xold, yold, rad;
  float angle=random(TWO_PI);
  float turning_rate = 0.1*TWO_PI;
  float step = 5.0;
  color col = color(random(255), random(255), random(255));
  float wid = random(5.);
  
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
    rad = sqrt(x*x + y*y);
    wid = 0.01*rad + 1.;
  }
  
  void display() {
    stroke(col); // white stroke
    //strokeWeight(wid); // different stroke widths
    line(xold,yold, x, y); // line from xold,yold to x,y
  }
}