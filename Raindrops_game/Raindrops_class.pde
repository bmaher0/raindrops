class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;
  int hue;

  Raindrops() {
    d = int(random(minSize, maxSize));
    //random loc on top of screen
    loc = new PVector(random(width), 0);
    vel = new PVector(random(-.05, .05), random(0, .5));
    acc = new PVector(0, random(.05));
    hue = int(random(360));
  }
  //creates raindrop ellipse
  void display() {
    noStroke();
    colorMode(HSB, 360, 100, 100);
    fill(hue, 100, 100);
    ellipse(loc.x, loc.y, d, d);
  }
  //updates PVectors
  void update() {
    vel.add(acc);
    loc.add(vel);
  }
}
