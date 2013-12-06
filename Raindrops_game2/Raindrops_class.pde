class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;
  Catcher ca;
  boolean caught;

  Raindrops(int dia, Catcher cat) {
    d = dia;
    loc = new PVector(random(width), random(height));
    vel = new PVector(random(.5), random(5));
    acc = new PVector(random(.1), random(5));
    ca = cat;
    caught = false;
  }

  void display() {
    if (!caught) {
      fill(0, 0, 255);
      ellipse(loc.x, loc.y, d, d);
    }
  }
  void update() {
    vel.add(acc);
    loc.add(vel);
    if (dist(loc.x, loc.y, ca.loc.x, ca.loc.y) <= ca.d/2 + d/2) {
      caught = true;
    }
  }
  void d() {
    display();
  }
  void u() {
    update();
  }
}

