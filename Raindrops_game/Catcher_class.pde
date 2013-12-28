class Catcher {
  PVector loc;
  int d;
  int hue;
  int keySpeed;
  PImage umb;

  Catcher() {
    d = 100;
    loc = new PVector(width/2, height-50-d);
    hue = 0;
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
    hue = int(float(mouseX)/float(width)*360);
  }
  //display catcher ball
  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(hue, 100, 100);
//old ellipse    ellipse(loc.x, loc.y, d, d);
imageMode(CENTER);
image(umb, loc.x, loc.y, d, d);
  }
}

