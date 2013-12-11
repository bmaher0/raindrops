class Catcher {
  PVector loc;
  int d;

  Catcher() {
    d = catcherD;
    loc = new PVector(mouseX, height-50-catcherD/2);
  }
  void update() {
    d = catcherD;
    loc.x = mouseX;
  }
  //display catcher ball
  void display() {
    noStroke();
    colorMode(HSB, width, 100, 100);
    fill(loc.x, 100, 100);
    ellipse(loc.x, loc.y, d, d);
  }
}

