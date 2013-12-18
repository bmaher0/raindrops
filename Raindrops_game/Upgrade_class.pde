class Upgrade {
  PVector loc;
  PVector size;
  int id;
  int price;
  int buys;
  int buyLimit;
  float inc;
  String text;
  Upgrade(int idx) {
    loc = new PVector(upgradeInfo[idx][0].x, upgradeInfo[idx][0].y);
    size = new PVector(upgradeInfo[idx][1].x, upgradeInfo[idx][1].y);
    id = idx;
    price = 100;
    inc = 1.25;
    buys = 0;
    if (id == 0 || id == 2 || id == 3) {
      buyLimit = 0;
    } 
    if (id == 1) {
      buyLimit = 10;
    }
    text = upgradeText[id];
    
  }
  void display() {
    colorMode(HSB, 360, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    fill(120, 100, 100);
    rect(loc.x, loc.y, size.x, size.y);
    textAlign(CENTER);
    textSize(12);
    fill(0, 100, 100);
    text(text, loc.x+size.x/2, loc.y+size.y/3);
    text(price, loc.x+size.x/2, loc.y+size.y*2/3);
  }
  void update() {
    if ((buyLimit == 0 || buys < buyLimit) && g.points > price) { 
      if (button(loc.x, loc.y, size.x, size.y)) {
        if (id == 0) {
          g.lives++;
        } 
        if (id == 1) {
          c.d+=20;
        }
        if (id == 2) {
          g.rateLower+=1000;
        }
        if (id == 3) {
          g.accLower+=.01;
        }
        g.oldPoints+=price;
        price = int(price*inc);
      }
    }
  }
}

