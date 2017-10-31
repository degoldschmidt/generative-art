class Flower {

  PVector pos;
  float size;
  
  Flower(float x, float y) {
    pos = new PVector(x, y);
    size = 20;
  }
  
  void update (ArrayList<Bee> bees) {
    for (Bee bee : bees){
      float d = PVector.dist(bee.pos, this.pos);
    }
  }
  
  void render () {
    fill(20,200,0,100);
    noStroke();
    ellipse(pos.x, pos.y, size, size);
  }
  
  void run (ArrayList<Bee> bees) {
    update(bees);
    render();
  }
}