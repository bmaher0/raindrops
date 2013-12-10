class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;
  
  Raindrops(int dia) {
    d = dia;
<<<<<<< HEAD
    loc = new PVector(random(width), random(height));
    vel = new PVector(random(.5), random(5));
    acc = new PVector(random(.1), random(5));
=======
    loc = new PVector(random(width), 0);
    vel = new PVector(1, 50);
    acc = new PVector(.1, 5);
>>>>>>> 298726e0046e81d1129beb1cc10e2a75858b6905
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

