//states
boolean shopOpen;
boolean start;
boolean paused;
//game objects/mechanics
int rate;
ArrayList<Raindrops> rain;
ArrayList<Upgrades> shop;
Catcher c;
int catcherD;
//drop properties
int minSize;
int maxSize;
//score and points
int score;
int points;
int oldPoints;

Timer t;
void setup() {
  minSize = 25;
  maxSize = 50;
  start = false;
  score = 10;
  points = 10;
  oldPoints = 0;
  catcherD = 100;
  size(500, 500);
  //construct raindrops
  rain = new ArrayList<Raindrops>();
  for (int i = 0; i < 5; i++) {
    rain.add(new Raindrops());
  }
  //construct catcher
  c = new Catcher();
  //construct timer
  t = new Timer();
  noStroke();
}

void draw() {
  rate = int(5000*exp(-.0005*score));
  if (start) {
    //run game
    if (!paused) {
      game();
    }
    //open pause menus
    else if (!shopOpen) {
      pauseMenu();
    } 
    //open shop
    else { 
      shop();
    }
  }
  //display start menu
  else { 
    startMenu();
  }
}

void keyPressed() {
  if (start) {
    if (key == 'p') {
      paused = !paused;
    }
  }
}

