class Catcher {
  PVector loc;
  int d;

  Catcher(int dia) {
    d = dia;
    loc = new PVector(mouseX, height-100);
  }
  void update() {
    loc.x = mouseX;
  }
  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void d() {
    display();
  }
  void u() {
    update();
  }
}

