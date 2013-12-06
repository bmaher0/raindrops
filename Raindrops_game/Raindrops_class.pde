class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;

  Raindrops(int dia) {
    d = dia;
    loc = new PVector(random(width), 0);
    vel = new PVector(1, 50);
    acc = new PVector(.1, 5);
  }

  void display() {
    colorMode(RGB, 255, 255, 255);
    fill(0, 0, 255);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
    if (loc.x < 0) {
      loc.x = 0;
      vel.x *=-1;
    }
    if (loc.x > width) {
      loc.x = width;
      vel.x *=-1;
    }
  }
}

