class Upgrade {
  PVector loc;
  PVector size;
  int id;
  int price;
  int buys;
  int buyLimit;
  float inc;
  Upgrade(float lx, float ly, float sx, float sy, int idx) {
    loc = new PVector(lx, ly);
    size = new PVector(sx, sy);
    id = idx;
    price = 100;
    inc = 1.25;
    buys = 0;
    if (id == 0 || id == 2) {
      buyLimit = 0;
    } 
    if (id == 1) {
      buyLimit = 10;
    }
  }
  void display() {
    colorMode(HSB, 360, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    fill(120, 100, 100);
    rect(loc.x, loc.y, size.x, size.y);
    textAlign(CENTER);
    textSize(15);
    fill(0, 100, 100);
    text(upgradeText[id], loc.x+size.x/2, loc.y+size.y/3);
    text(price, loc.x+size.x/2, loc.y+size.y*2/3);
  }
  void update() {
    if ((buyLimit == 0 || buys < buyLimit) && gi.points > price) { 
      if (button(loc.x, loc.y, size.x, size.y)) {
        if (id == 0) {
          gi.lives++;
        } 
        if (id == 1) {
          catcherD+=20;
        }
        if (id == 2) {
          gi.rateLower+=1000;
        }

        gi.oldPoints+=price;
        price = int(price*inc);
      }
    }
  }
}

