// triangle tesselation
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Draw tesselated triangles as objects
// ---

ArrayList<Triangle> tris = new ArrayList<Triangle>();
int a = 40;       // Size of triangle
float b = sqrt(3)*a/2; // Height of triangle

void setup (){
  size(800, 800);
  background(255);
  for (int row=-1;row<width/b;row++){
    for (int col=-1;col<width/a;col++){
      tris.add(new Triangle(row,col,a,false));
      tris.add(new Triangle(row,col,a,true));
    }
  }
}

void draw (){
  for (Triangle tri : tris) {
    tri.show();
  }
}