//states
int state, startState, gameState, pauseState, shopState, loseState;
//game objects/mechanics
int rate;
ArrayList<Raindrops> rain;
Catcher c;
Timer t;
Game g;
StartMenu s;
PauseMenu p;
GameInfo gi;
int catcherD;
//Information for upgrades
Upgrade[] upgrades = new Upgrade[2];
PVector[][] upgradeInfo = new PVector[upgrades.length][2];
String[] upgradeText = new String[upgrades.length];
//drop properties
int minSize;
int maxSize;
//score and points
String[] effects = new String[1];

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
  if (state == startState) {
    //start menu
    s.display();
    s.update();
  } 
  if (state == gameState) {
    //game
    g.update();
    g.display();
  } 
  if (state == pauseState) {
    //pause menu
    p.resumeButton();
    p.shopButton();
    p.resetButton();
  } 
  if (state == shopState) {
    //shop function
    shop();
  } 
  if (state == loseState) {
    //lose screen
    lose();
  } 
  if (state > startState) {
    //run gameinfo unless at start
    gi.display();
    gi.update();
  }
  println(gi.lives);
}
void keyPressed() {
  ///switch states using keys
  if (state > startState) {
    if (key == 'p') {
      state = pauseState;
    }
    if (key == 'r') {
      state = gameState;
    }
    if (key == 's') {
      state = shopState;
    }
    if (key == 'v') {
      reset();
    }
  }
}

