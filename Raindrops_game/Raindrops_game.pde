//states
int gameState;
//game objects/mechanics
int rate;
ArrayList<Raindrops> rain;
// upgrades not working, to be fixed ArrayList<Upgrades> shop;
Catcher c;
Timer t;
int catcherD;
//drop properties
int minSize;
int maxSize;
//score and points
int score;
int points;
int oldPoints;
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
  //upgrades
  // upgrades not working, to be fixed  u = new Upgrades(width/4, height/9, 100, 0);
  effects[0] = "Increase radius";
}

void draw() {
  background(0);
  rate = int(5000*exp(-.0005*score));
  //run based on state
  if (gameState == 0) {
    startMenu();
  } 
  if (gameState == 1) {
    game();
  } 
  if (gameState == 2) {
    pauseMenu();
  } 
  if (gameState == 3) {
    shop();
  } 
  if (gameState == 4) {
    lose();
  } 
  if (gameState > 0) {
    //run unless at start
    displayInfo();
  }
  points = score - oldPoints;
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

