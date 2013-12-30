class Upgrade {
  //location of upgrade
  PVector loc;
  //size of upgrade
  PVector size;
  //id number, determines what upgrade it is
  int id;
  //price of upgrade
  int price;
  //times bought
  int buys;
  //max times buyable
  int buyLimit;
  //increase factor per purchase
  float inc;
  //text to display at menu
  String text;
  //variable used to control upgrade purchase speed
  int boughtTime;

  Upgrade(int idt) {
    //location and size take from upgradeInfo
    loc = new PVector(upgradeInfo[idt][0].x, upgradeInfo[idt][0].y);
    size = new PVector(upgradeInfo[idt][1].x, upgradeInfo[idt][1].y);
    id = idt;
    buys = 0;
    //sets restrictions on catcher increasing, it was really OP before
    if (id == 1) {
      buyLimit = 5;
      inc = 1.75;
      price = 150;
    } 
    //restrictions on other upgrades
    else {
      buyLimit = 0;
      inc = 1.25;
      price = 100;
    }
    //assigns text from upgradeText array
    text = upgradeText[id];
  }
  void display() {
    //creates upgrade info from loc and size
    colorMode(HSB, 360, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    fill(120, 100, 100);
    rect(loc.x, loc.y, size.x, size.y);
    //displays upgrade text
    textAlign(CENTER);
    textSize(12);
    fill(0, 100, 100);
    text(text, loc.x+size.x/2, loc.y+size.y/3);
    //displays upgrade price
    text(price, loc.x+size.x/2, loc.y+size.y*2/3);
  }
  void update() {
    //if it has been bought fewer times than buyLimit or buyLimit is 0, and you have points for it
    if ((buyLimit == 0 || buys < buyLimit) && g.points > price) {
      //if it has been more than 100 milliseconds since the last purchase/opening the shop
      if (millis()-boughtTime > 100) {
        //if clicked within the rectangle, buy the upgrade
        if (button(loc.x, loc.y, size.x, size.y)) {
          boughtTime = millis();
          //if id == 0, then receive a bonus lif
          if (id == 0) {
            g.lives++;
          } 
          else
            //if id == 1, increase catcher diameter by 20
            if (id == 1) {
              c.d+=20;
            } 
            else
              //if id == 2, lower the rate of raindrop generation by 1000
              if (id == 2) {
                g.rateLower+=1000;
              } 
              else
                //if id == 3, lower the maxAcc of the drops
                if (id == 3) {
                  g.accLower+=.01;
                }
          //increase oldPoints by price, lowering points
          g.oldPoints+=price;
          //multiply price by inc
          price = int(price*inc);
        }
      }
    }
  }
}

