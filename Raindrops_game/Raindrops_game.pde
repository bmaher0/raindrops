<<<<<<< HEAD
=======
boolean start;
int rate;
ArrayList<Raindrops> rain;
Catcher c;

void setup() {
  start = false;
  size(500, 500);
  //construct raindrops
  rain = new ArrayList<Raindrops>();
  for (int i = 0; i < 10; i++) {
    rain.add(new Raindrops(int(random(25))));
  }
  //construct catcher
  c = new Catcher(100);
}

void draw() {
    if (start) {
    //background(0);
    //display catcher
    c.update();
    c.display();
    //display raindrops
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.display();
      drop.update();
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) > drop.d/2+c.d/2) {
        rain.remove(i);
      }
    }
  }
  else { 
    startScreen();
  }
}
>>>>>>> 298726e0046e81d1129beb1cc10e2a75858b6905

