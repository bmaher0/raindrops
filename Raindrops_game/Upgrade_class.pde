class Upgrade {
  PVector loc;
  PVector size;
  int id;
  int price;
  int buys;
  int buyLimit;
  float inc;
  String text;
  Upgrade(int idt) {
    loc = new PVector(upgradeInfo[idt][0].x, upgradeInfo[idt][0].y);
    size = new PVector(upgradeInfo[idt][1].x, upgradeInfo[idt][1].y);
    id = idt;
    buys = 0;
    if (id == 1) {
      buyLimit = 5;
      inc = 1.75;
      price = 150;
    } 
    else {
      buyLimit = 0;
      inc = 1.25;
      price = 100;
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

