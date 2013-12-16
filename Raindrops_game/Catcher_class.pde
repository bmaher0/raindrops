class Catcher {
  PVector loc;
  int d;
  int hue;

  Catcher() {
    d = catcherD;
    loc = new PVector(mouseX, height-50-catcherD/2);
    hue = 0;
  }
  //sets catcher position
  void update() {
    d = catcherD;
    loc.x = mouseX;
    loc.y = height-50-catcherD/2;
    hue = int(float(mouseX)/float(width)*360);
    println(hue);
  }
  //display catcher ball
  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(hue, 100, 100);
    ellipse(loc.x, loc.y, d, d);
  }
}

