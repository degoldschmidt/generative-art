// triangle class
class Triangle{
  PVector p1, p2, p3;
  color c2 = color(random(255), random(255), random(255));
  float b;
  boolean down;
  
  Triangle(int j, int i, int a, boolean reversed) {
    down = reversed;
    b = sqrt(3)*a/2; // Height of triangle
    if(!reversed){
      p1 = new PVector(i*a+(a/2)*(j%2), (j)*b);
      p2 = new PVector((i+0.5+0.5*(j%2))*a, (j+1)*b);
      p3 = new PVector((i+1+0.5*(j%2))*a, (j)*b);
    }
    else{
      p1 = new PVector(i*a+(a/2)*((j+1)%2), (j+1)*b);
      p2 = new PVector((i+0.5+0.5*((j+1)%2))*a, j*b);
      p3 = new PVector((i+1+0.5*((j+1)%2))*a, (j+1)*b);
    }
  }
  void show(){
    fill(c2);
    triangle(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y);
  }
}