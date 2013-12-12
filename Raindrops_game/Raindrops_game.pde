//states
int gameState;
//game objects/mechanics
int rate;
ArrayList<Raindrops> rain;
// upgrades not working, to be fixed: ArrayList<Upgrades> shop;
Catcher c;
Timer t;
Game g;
StartMenu s;
PauseMenu p;
GameInfo gi;
int catcherD;
//drop properties
int minSize;
int maxSize;

//score and points
String[] effects = new String[1];
// upgrades not working, to be fixed Upgrades u;

void setup() {
  size(500, 500);
  //initialize variables
  initialize();
  //construct raindrops
  rain = new ArrayList<Raindrops>();
  //construct objects
  constructors();
}

void draw() {
  background(0);
  rate = int(5000*exp(-.0005*gi.score));
  //run based on state
  if (gameState == 0) {
    s.display();
    s.update();
  } 
  if (gameState == 1) {
    g.update();
    g.display();
  } 
  if (gameState == 2) {
    p.resumeButton();
    p.shopButton();
    p.resetButton();
  } 
  if (gameState == 3) {
    shop();
  } 
  if (gameState == 4) {
    lose();
  } 
  if (gameState > 0) {
    //run unless at start
    gi.display();
    gi.update();
  }
}
void keyPressed() {
  if (gameState > 0) {
    if (key == 'p') {
      gameState = 2;
    }
    if (key == 'r') {
      gameState = 1;
    }
    if (key == 's') {
      gameState = 3;
    }
  }
}

