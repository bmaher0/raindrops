//states
int state, startState, gameState, pauseState, shopState, loseState;
//Information for upgrades
Upgrade[] upgrades = new Upgrade[4];
PVector[][] upgradeInfo = new PVector[upgrades.length][2];
String[] upgradeText = new String[upgrades.length];
//game objects/mechanics
ArrayList<Raindrops> rain;
Catcher c;
Timer t;
Game g;
StartMenu s;
PauseMenu p;
LoseMenu l;
//drop properties
int minSize;
int maxSize;

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
    l.display();
  } 
  if (state > startState) {
    //run gameinfo unless at start
    g.displayInfo();
    g.updateInfo();
  }
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
    if (key == 'q') {
      g.reset();
    }
  }
}

