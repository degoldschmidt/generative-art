// colors
// author: dennis goldschmidt
// date: 29 Oct 2017
// ---
// Create 3d shapes
// 1) RGB vs. HSB
// 2) transparency (alpha)
// 3) lerpColor
// ---

void setup () {
  size(200, 200);
  
  // RGB example
  drawRGB();
  fill(90,90,0,100); //transparency
  rect(0,0,200,200);
  
  //lerp example
  //drawLerp();
}


//
void drawRGB () {
   background(0);
   fill(255, 0, 0);
   rect(20,20, (width-80)/3, height-40);
   fill(0, 255, 0);
   rect(40+(width-80)/3,20, (width-80)/3, height-40);
   fill(0, 0, 255);
   rect(60+2*(width-80)/3,20, (width-80)/3, height-40);
}

//lerp example
void drawLerp () {
  stroke(255);
  background(51);
  color from = color(255, 20, 0);
  color to = color(20, 100, 255);
  color interA = lerpColor(from, to, .33);
  color interB = lerpColor(from, to, .66);
  fill(from);
  rect(20, 20, 40, 160);
  fill(interA);
  rect(60, 20, 40, 160);
  fill(interB);
  rect(100, 20, 40, 160);
  fill(to);
  rect(140, 20, 40, 160);
}