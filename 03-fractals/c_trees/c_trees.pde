// recursive trees
// author: dennis goldschmidt
// date: 26 Oct 2017
// ---
// Create trees using recursion
//
// ---

float length;

void setup () {
  size(1200,350);
  background(0);
  length = 200;
  stroke(255);
  
  //line(width/2, height, width/2, height-120);
  //line(width/2, height-120, width/2, height-120);
  drawTree(width/2-200, height, 40, 95);
  drawTree(width/2+300, height, 20, 85);
  drawTree(width/2+100, height, 50, 88);
  drawTree(width/2+400, height, 5, 92);
  drawTree(width/2-400, height, 10, 78);
}

void drawTree(float x0, float y0, float len, float angle) {
  float x1 = x0 + cos(radians(angle))*len;
  float y1 = y0 - sin(radians(angle))*len;
  if(len < 10) {
      stroke(random(255),random(255),random(255));
  }
  line(x0, y0, x1, y1);
  if (len > 5) {
    drawTree(x1, y1, len*(random(0.5)+0.5), angle + 30 + random(10));
    drawTree(x1, y1, len*(random(0.5)+0.5), angle - 30 + random(10));
  }
} // end drawTree()