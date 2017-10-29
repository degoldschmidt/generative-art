// shapes
// author: dennis goldschmidt
// date: 29 Oct 2017
// ---
// Create shapes
// 1) White background
// 2) Draw a line from topleft corner to bottomright corner
// 3) Draw a circle in the center of the canvas
// 4) Draw a square on top of the circle
// 5) Draw a quadrilateral
// ---

void setup () {
  // canvas with white background
  size(800, 800);
  background(255);
  
  // line (topleft to bottomright): line(x0,y0,x1,y1)
  strokeWeight(5);  // linewidth
  line(0, 0, width, height);
  
  // circle in center: ellipse(x0, y0, width, height)
  noFill();  // transparent filling
  strokeWeight(1); // block def
  float radius = 100;  // radius variable
  ellipse(width/2, height/2, radius, radius);
  
  // square on top of circle: rect(x0,y0, w,h)
  rect((width-radius)/2, (height-radius)/2, radius, radius); // x0,y0 is topleft corner
  
  // quadrilateral: quad(x0, y0, x1, y1, x2, y2, x3, y3)
  strokeWeight(3);
  stroke(255,0,0);  // red stroke
  quad(2, 200, 2, 550, 600, 550, 600, 300);
}