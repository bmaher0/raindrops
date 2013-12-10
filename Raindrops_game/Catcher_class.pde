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
    noStroke();
    colorMode(HSB, width, 100, 100);
    fill(loc.x, 100, 100);
    ellipse(loc.x, loc.y, d, d);
  }
}

