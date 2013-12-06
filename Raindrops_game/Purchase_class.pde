/*class Purchase {
  boolean bought;
  PVector loc;
  PVector size;
  int cost;
  String item;
  color col;
  Purchase(float lx, float ly, float sx, float sy, int tempCost, String tempItem, color tempCol) {
    bought = false;
    loc = new PVector(lx, ly);
    size = new PVector(sx, sy);
    cost = tempCost;
    item = tempItem;
    col = tempCol;
  }
  void display() {
    if (shops && !bought) {
      rect(loc.x, loc.y, size.x, size.y);
      textAlign(CENTER);
      textSize(20);
      text(item, loc.x+size.x/2, loc.y+size.y/4);
      text(item, loc.x+size.x/2, loc.y+size.y*3/4);
    }
  }
}*/

