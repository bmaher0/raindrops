class Raindrops {
  PVector loc;
  PVector vel;
  PVector acc;
  int d;
  int shrubPrb;
  boolean shrub;

  Raindrops() {
    d = int(random(minSize, maxSize));
    //random loc on top of screen
    loc = new PVector(random(width), 0);
    //random vel/acc based on maxAcc
    vel = new PVector(random(-.05, .05), random(0, g.maxAcc));
    acc = new PVector(0, random(0, g.maxAcc));
    //generate a shrubbery every 1/shrubPrb raindrops
    shrubPrb = 50;
    float random = random(shrubPrb);
    if (random < 1) {
      shrub = true;
    } 
    else {
      shrub = false;
    }
  }
  //creates raindrop ellipse
  void display() {
    imageMode(CORNER);
    //if shrub, then display shrub image
    if (shrub) {
      image(sr, loc.x-d/2, loc.y - d, d, 1.5*d);
    } 
    //if not a shrub, then display rain image
    else {
      image(rd, loc.x-d/2, loc.y - d, d, 1.5*d);
      //for debugging ellipse(loc.x, loc.y, d, d);
    }
  }
  //updates PVectors
  void update() {
    //increment vel by acc
    vel.add(acc);
    //increment loc by vel
    loc.add(vel);
  }
}

