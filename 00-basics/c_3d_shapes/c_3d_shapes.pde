// 3d shapes
// author: dennis goldschmidt
// date: 29 Oct 2017
// ---
// Create 3d shapes
// 1) White background, OPENGL
// 2) Draw box 
// ---

void setup () {
  size(800, 800, P3D);
  background(255);
  float boxsize = 300;
  translate(width/2, height/2, 0); 
  rotateY(0.5);
  noFill();
  box(boxsize);
}