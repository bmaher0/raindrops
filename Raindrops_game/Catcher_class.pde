class Catcher {
  PVector loc;
  int d;
  int keySpeed;
  PImage umb;

  Catcher() {
    d = 100;
    loc = new PVector(width/2, height-50-d);
    keySpeed = 3;
    umb = loadImage("umbrella.png");
  }
  //sets catcher position
  void update() {
    if (g.mouseMode) {
      loc.x = mouseX;
      loc.y = height-50-d/2;
    }
    else {
      if (key == 'a') {
        c.loc.x-=keySpeed;
      }
      if (key == 'd') {
        c.loc.x+=keySpeed;
      }
    }
  }
  //display catcher ball
  void display() {
    imageMode(CENTER);
    image(umb, loc.x, loc.y, d, d);
  }
}

