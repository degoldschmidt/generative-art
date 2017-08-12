// correlated random walk
// author: dennis goldschmidt
// date: 11 Aug 2017
// ---
// Random walk in 2D all directions (correlated angles)
// ---

var walkers = []; // array of Jitter objects

function setup() {
  createCanvas(windowWidth, windowHeight);
  //background(0);
  var num_walkers = 1000;
  for (var i=0; i<num_walkers; i++) {
    print(width/2, height/2);
    walkers.push(new RandomWalker(width/2, height/2));
  }
}

function draw() {
  fill(255)
  ellipse(50, 50, 80, 80);
  for (var i=0; i<walkers.length; i++) {
      walkers[i].move();
      walkers[i].display();
  }
}

function RandomWalker(x0, y0) {
  this.x = x0;
  this.y = y0;
  this.xold = x0;
  this.yold = y0;
  this.angle= -PI/2;//random(TWO_PI);
  this.turning_rate = 0.01*TWO_PI;
  this.step = 0.5;
  this.col = color(random(255), 50+random(100), 255);
  this.wid = 1.;//random(1.);

  this.move = function () {
    this.xold = this.x;
    this.yold = this.y;
    this.angle += this.turning_rate * randomGaussian(); // random number from Gaussian (mean=0, std=1)
    this.x += this.step*cos(this.angle);
    this.y += this.step*sin(this.angle);
    this.wid += 0.002;
  }

  this.display = function () {
    stroke(this.col); // white stroke
    strokeWeight(this.wid); // different stroke widths
    line(this.xold,this.yold,this.x, this.y); // line from xold,yold to x,y
  }
}
