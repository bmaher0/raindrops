class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;
  PImage rd;

  Raindrops() {
    d = int(random(minSize, maxSize));
    //random loc on top of screen
    loc = new PVector(random(width), 0);
    vel = new PVector(random(-.05, .05), random(0, g.maxAcc));
    acc = new PVector(0, random(0, g.maxAcc));
    rd = loadImage("raindrop.png");
  }
  //creates raindrop ellipse
  void display() {
    imageMode(CORNER);
    image(rd, loc.x-d/2, loc.y + d, d, 1.5*d);
  }
  //updates PVectors
  void update() {
    vel.add(acc);
    loc.add(vel);
  }
}

