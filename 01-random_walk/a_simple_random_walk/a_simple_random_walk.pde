// simple random walk
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Simple random walk in 4 directions
// ---
import gifAnimation.*;
import processing.opengl.*;


GifMaker gifExport;
int frames = 0;
int totalFrames = 100;
float x, y, xold, yold;
int choice;
int step = 10;

void setup () {
  size(800, 800);
  background(255, 152, 64);
  frameRate(60);
  x = width/2;
  y = height/2;
  
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0); // make it an "endless" animation
}

void draw () {
  xold = x;
  yold = y;
  stroke(255); // white stroke
  strokeWeight(2);
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
  //extra
  export();
}

void export() {
  if(frames < totalFrames) {
    gifExport.setDelay(1);
    gifExport.addFrame();
    frames++;
  } else {
    gifExport.finish();
    frames++;
    println("gif saved");
    exit();
  }
}