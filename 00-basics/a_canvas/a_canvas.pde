// canvas
// author: dennis goldschmidt
// date: 29 Oct 2017
// ---
// Create a canvas of a certain size with a colored background
// 1) Setup function
// 2) Size function
// 3) Background function
// 4) Random function
// 5) variables and data types (int/float)
// 6) println function
// ---

void setup () {
  size ( 800, 800 );
  float R = random(255);
  float G = random(255);
  float B = random(255);
  color random_color = color(R, G, B);
  background (random_color); // random RGB color
  println(hex(random_color, 6));  // print HEX color
  println(R, G, B);  // print RGB values
}