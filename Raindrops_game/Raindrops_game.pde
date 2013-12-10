boolean start;
boolean paused;
int rate;
ArrayList<Raindrops> rain;
Catcher c;
int score;
int points;
int oldPoints;
int minSize;
int maxSize;
Timer t;
void setup() {
  minSize = 25;
  maxSize = 50;
  start = false;
  score = 10;
  points = 10;
  oldPoints = 0;
  size(500, 500);
  //construct raindrops
  rain = new ArrayList<Raindrops>();
  for (int i = 0; i < 5; i++) {
    rain.add(new Raindrops());
  }
  //construct catcher
  c = new Catcher(100);
  //construct timer
  t = new Timer();
}

void draw() {
  rate = 1000;
  if (start && !paused) {
    background(0);
    displayScore();
    t.update(rate);
    //display catcher
    c.update();
    c.display();
    //display raindrops
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.display();
      drop.update();
      // if caught, remove raindrop
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) < drop.d/2+c.d/2) {
        points+=drop.vel.y;
        rain.remove(i);
        rain.add(new Raindrops());
      }
      //if falls, remove raindrop
      if (drop.loc.x >= width) {
        rain.remove(i);
      }
    }
    if (t.check) {
      rain.add(new Raindrops());
    }
    score = points + oldPoints;
  }
  else if (paused) {
    pauseMenu();
  }
  else { 
    startScreen();
  }
}

void keyPressed() {
  if (key == 'p') {
    paused = !paused;
  }
}

