// animation
// author: dennis goldschmidt
// date: 29 Oct 2017
// ---
// Create animated shapes
// 1) draw circle
// 2) move shape
// 3) draw function (setup vs. draw)
// ---

float x, x0, y0, d;

void setup () {
  size(400, 400);
  background(255);
  frameRate(60);
  
  // center point
  x0 = width/2;
  y0 = height/2;
  d = 20;
  fill(0);
  ellipse(x0, y0, d/4, d/4);
  
  /*
  // just static
  x = x0 + 20;
  ellipse(x, y0, d, d);
  
  //// next step
  x += 20;
  ellipse(x, y0, d, d);
  
  //// next steps
  for (int i=0;i<3;i++){
    x += 20;
    ellipse(x, y0, d, d);
  }
  */
}

/*
void draw () {
  background(255);
  fill(0);
  ellipse(width/2, height/2, d/4, d/4);
  x += 5;
  if(x>width-d/2) x=d/2;
  ellipse(x, y0, 50, 50);
}*/