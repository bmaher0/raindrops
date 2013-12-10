class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;

  Raindrops() {
    d = int(random(minSize, maxSize));
    loc = new PVector(random(width), 0);
    vel = new PVector(random(-.05,.05), random(.5));
    acc = new PVector(0, random(.05));
  }

  void display() {
    colorMode(RGB, 255, 255, 255);
    fill(0, 0, 255);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
  }
}

