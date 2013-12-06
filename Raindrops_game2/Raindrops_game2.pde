Catcher c;
Raindrops[] rainArray = new Raindrops[10];
void setup() {
  size(500, 500);
  c = new Catcher(100);
  for (int i = 0; i < rainArray.length; i++) {
    rainArray[i] = new Raindrops(20, c);
  }
}

void draw() {
  background(100);
  c.u();
  c.d();
  for (int i = 0; i < rainArray.length; i++) {
    rainArray[i].u();
    rainArray[i].d();
  }
}

