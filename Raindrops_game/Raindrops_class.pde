class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;

  Raindrops(int dia) {
    d = dia;
    loc = new PVector(random(width), 0);
    vel = new PVector(random(.5), random(5));
    acc = new PVector(random(.1), random(5));
  }

  void display() {
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

