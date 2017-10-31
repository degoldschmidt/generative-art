// The Bee class

class Bee {

  PVector pos, hive_pos;
  float angle;
  float desired_angle;
  float r;
  float speed;    // constant speed
  int counter;
  boolean out, gohome;
  float homing = 500+random(1000);

    Bee(float x, float y) {

    // This is a new PVector method not yet implemented in JS
    // velocity = PVector.random2D();

    // Leaving the code temporarily this way so that this example runs in JS
    angle = random(TWO_PI);
    pos = new PVector(x, y);
    hive_pos = new PVector(width/2, height/2);
    r = 2.0;
    speed = 1;
    counter = int(random(100));
    out = false;
    gohome = false;
  }

  void run(ArrayList<Bee> bees) {
    //hive(bees);
    update();
    if(out)  {
      borders();
      render();
    }
  }
  
  // Method to update pos
  void update() {
    if(out){
      counter += 1;
      float d = PVector.dist(pos, hive_pos);
      //println(pos, d);
      // Update angle
      if(gohome) {
         angle += 0.15*(atan2(pos.y-hive_pos.y, pos.x-hive_pos.x) - PI - angle);
         if( d < 10){ 
            gohome = false;
            out = false;
         }
      }
      else {
        angle += 0.15*(randomGaussian());
      }
      
      // Update velocity
      PVector velocity = new PVector(speed*cos(angle), speed*sin(angle));
      pos.add(velocity);
      if(counter > homing){
        gohome = true;
      }
    }
    else{
      counter -= 1;
      if(counter < 0){
        counter=0;
        out=true;
        gohome=false;
      }
    }
  }

  // Method to draw bee
  void render() {
    // Draw a triangle rotated in the direction of velocity
    fill(255, 100);
    //stroke(255,204,0);
    stroke(255);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle+radians(90));
    beginShape(TRIANGLES);
    vertex(0, -r*2);
    vertex(-r, r*2);
    vertex(r, r*2);
    endShape();
    popMatrix();
  }

  // Wraparound
  void borders() {
    if (pos.x < -r) pos.x = width+r;
    if (pos.y < -r) pos.y = height+r;
    if (pos.x > width+r) pos.x = -r;
    if (pos.y > height+r) pos.y = -r;
  }
}