// recursive circles
// author: dennis goldschmidt
// date: 26 Oct 2017
// ---
// Create circles using recursion
// 1) example of smaller circles
// 2) recursive circles that surprise
// 3) 2D tesselation
// 4) low-complexity art
// ---

float x0, y0;
float rad;
int all;

void setup () {
  size(800, 800);
  background(255);
  x0 = width/2;
  y0 = height/2;
  rad = 800;
  
  // first draw some circles by hand
  //ellipse(x0, y0, rad, rad);
  //ellipse(x0, y0, rad/2, rad/2);
  //ellipse(x0, y0, rad/4, rad/4);
  //ellipse(x0, y0, rad/8, rad/8);
  
  // define recursive function
  //drawCircle(x0, y0, 400.);
  
  // 1d recursion that creates fractals
  //drawFractal1d(x0, y0, 400.);
  
  // 2d recursion that creates fractals
  //drawFractal2d(x0, y0, 400.);
  
  // 360º recursion that creates fractals
  drawFractal360(x0, y0, 400.);
}

void draw () {

}

// this function draws smaller and smaller circles recursively
void drawCircle(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 1) {
    radius *= 0.5f;
    x += 50;
    // The drawCircle() function is
    // calling itself recursively.
    drawCircle(x, y, radius);
  }
}

void drawFractal1d(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 8) { // 400, 200, 100, 50, 25
    //drawFractal1d() calls itself twice, creating a branching effect. For every circle, a smaller circle is drawn to the left and the right.
    drawFractal1d(x + radius/2, y, radius/2);
    drawFractal1d(x - radius/2, y, radius/2);
  }
}

void drawFractal2d(float x, float y, float radius) {
  //stroke(255.*(1-(radius/400))); 
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 8) { // 400, 200, 100, 50, 25
    //drawCircle() calls itself four time, creating a branching effect. For every circle, a smaller circle is drawn to the left and the right, and above and below.
    drawFractal2d(x + radius/2, y, radius/2);
    drawFractal2d(x - radius/2, y, radius/2);
    drawFractal2d(x, y + radius/2, radius/2);
    drawFractal2d(x, y - radius/2, radius/2);
  }
}

void drawFractal360(float x, float y, float radius) {
  stroke(255.*(1-(radius/400)));
  //stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 100) { // 400, 200, 100, 50, 25
    //drawCircle() calls itself four time, creating a branching effect. For every circle, a smaller circle is drawn to the left and the right, and above and below.
    all = 36;
    for (int i = 0; i < all; i = i+1) {
      drawFractal360(x+cos(2*PI*i/all)*radius/2,y+sin(2*PI*i/all)*radius/2, radius/2);
    }
  }
}