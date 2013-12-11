// upgrades not working, to be fixed 
/*class Upgrades {
 PVector loc;
 int firstPrice;
 int price;
 float inc;
 int effect;
 
 Upgrades(float x, float y, int tempPrice, int tempEffect) {
 loc = new PVector(x, y);
 firstPrice = tempPrice;
 price = firstPrice;
 tempEffect = effect;
 inc = 1.15;
 }
 
 void display() {
 colorMode(HSB, 360, 100, 100);
 fill(120, 100, 100);
 rect(loc.x, loc.y, 100, 50);
 textSize(10);
 fill(0, 100, 100);
 text(effects[effect], loc.x + 50, loc.y + 25);
 }
 
 void purchase() {
 if (gameState == 3 && points >= price && button(int(loc.x), int(loc.y), 100, 50)) {
 oldPoints += price;
 price = int(price*inc);
 if (effect == 0) {
 catcherD += 20;
 }
 }
 }
 }
 */
