// simple random walk
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Simple random walk in 4 directions
// ---

float x, y, xold, yold;
int choice;
int step = 10;

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
  //point(x, y) // point at position x,y
  
  choice = int(random(4)); // random choice of 0,1,2,3
  if (choice == 0){
    x += step;
  }
  else if (choice == 1){
    y += step;
  }
  else if (choice == 2){
    x -= step; 
  }
  else {
    y -= step; 
  }
  line(xold,yold, x, y); // at position x,y
}