// recursive trees
// author: dennis goldschmidt
// date: 26 Oct 2017
// ---
// Create trees using recursion
//
// ---

float length;

void setup () {
  size(800,800);
  background(0);
  length = 200;
}

void draw () {
  stroke(255);
  //line(width/2, height, width/2, height-120);
  //line(width/2, height-120, width/2, height-120);
  
  drawTree(width/2, height, 120, 90);
}

void drawTree(float x0, float y0, float len, float angle) {
  if (len > 10) {
    float x1 = x0 + cos(radians(angle))*len + random(1.1);
    float y1 = y0 - sin(radians(angle))*len + random(1.1);
    line(x0, y0, x1, y1);
    drawTree(x1, y1, len*0.75, angle + 30 );
    drawTree(x1, y1, len*0.75, angle - 30 );
  }
} // end drawTree()