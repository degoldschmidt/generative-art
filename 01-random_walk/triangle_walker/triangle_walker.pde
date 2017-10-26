// triangle tesselation
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Draw tesselated triangles as objects
// ---

ArrayList<Triangle> tris = new ArrayList<Triangle>();
Triangle head;
int a = 40;       // Size of triangle
float b = sqrt(3)*a/2; // Height of triangle
int i, j;
int active;
float rows, cols;

void setup (){
  size(800, 800);
  background(0);
  frameRate(60);
  rows = 2;//height/b
  cols = 1;//width/a
  for (int row=0;row<rows;row++){
    for (int col=0;col<cols;col++){
      tris.add(new Triangle(row,col,a,false));
      tris.add(new Triangle(row,col,a,true));
    }
  }
  int total = tris.size();
  println("The total number of triangles is: " + total);
  i=10;
  j=10;
  for (int k=0; k<tris.size(); k++) {
    Triangle tri = tris.get(k);
    //println("The position of triangle is: " + tri.row +", " + tri.col);
    if (tri.col == j) {
      if (tri.row == i) {
        println("The position of triangles is: " + i +", " + j);
      }
    }
  }
}

void draw (){
  println("The position of walker is: " + i +", " + j);
  for (int k=0; k<tris.size(); k++) {
    Triangle tri = tris.get(k);
    if (tri.col == j) {
      if (tri.row == i) {
        active = k;
        println("The position of triangle is: " + i +", " + j);
        tri.active(color(color(255,22,22)));
      }
    }
    tri.show();
  }

  //Triangle tri = tris.get(active);
  ////random walk
  //int choice = int(random(2)); // random choice of 0,1,2
  //println("Random choice: " + choice);
  //if (choice==0) {
  //  j--;
  //}
  //else if (choice==1) {
  //  if (tri.down) {
  //    i++;
  //    j+=i%2;
  //    j-=(i+1)%2;
  //  }
  //  else {
  //    i--;
  //    j+=i%2;
  //    j-=(i+1)%2;
  //  }
  //}
  //else {
  //  j++;
  //}
}

void keyPressed() {
  if (key == CODED) {
    Triangle tri = tris.get(active);
    if (keyCode == DOWN) {
      i++;
      j+=i%2;
      j-=(i+1)%2;
    } else if (keyCode == UP) {
      i--;
      j+=i%2;
      j-=(i+1)%2;
    } else if (keyCode == LEFT){
    j--;
  } else if (keyCode == RIGHT){
    j++;
  }
  } 
  
}