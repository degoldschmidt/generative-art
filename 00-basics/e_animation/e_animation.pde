// animation
// author: dennis goldschmidt
// date: 29 Oct 2017
// ---
// Create animated shapes (rotating)
// 1) draw circle
// 2) geometry of movement
// 3) draw function (setup vs. draw)
// ---

float x, y, angle;

void setup () {
  size(400, 400);
  background(255);
  frameRate(60);
  
  // center point
  //fill(0);
  //ellipse(width/2, height/2, 10, 10);
  
  // just static
  //x = width/2 + 100;
  //y = height/2;
  //ellipse(x, y, 50, 50);
  
  //// next step
  //x = width/2 + 100*cos(radians(30));
  //y = height/2 + 100*sin(radians(30));
  //ellipse(x, y, 50, 50);
  
  //// next step
  //x = width/2 + 100*cos(radians(60));
  //y = height/2 + 100*sin(radians(60));
  //ellipse(x, y, 50, 50);
}

void draw () {
  background(255);
  angle += 2.5;
  x = width/2 + 100*cos(radians(angle));
  y = height/2 + 100*sin(radians(angle));
  fill(0);
  ellipse(x, y, 50, 50);
}