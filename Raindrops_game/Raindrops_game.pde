//states
int state, startState, gameState, pauseState, shopState, ctrlState, loseState;
//Information for upgrades
Upgrade[] upgrades = new Upgrade[4];
PVector[][] upgradeInfo = new PVector[upgrades.length][2];
String[] upgradeText = new String[upgrades.length];
//array for Pro tips
String[] proTips = {
  "For a harder game with higher scores, play on A-D mode!", "Matching catcher colors and drop colors gives a bonus life!", "Ms. Gerstein is the best teacher ever!!!", "Green is not a creative color!","Punch trees for wood","expect the Spanish Inquisition","bring me a shubbery","2 + 2 = 10","join Team 1257","The concepts of Gracious Professionalism and Coopertition \n are fundamental parts of the FIRST philosophy.","finish him!","Erik's program is probably weirder than this one"
};
//game objects/mechanics
ArrayList<Raindrops> rain;
Catcher c;
Timer t;
Game g;
StartMenu s;
PauseMenu p;
LoseMenu l;
Shop sh;
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
  else { 
    //run gameinfo unless at start
    g.displayInfo();
    g.updateInfo();
    if (state == gameState) {
      //game
      g.update();
      g.display();
    } 
    else if (state == pauseState) {
      //pause menu
      p.resumeButton();
      p.shopButton();
      p.resetButton();
    } 
    else if (state == shopState) {
      //shop function
      sh.display();
    } 
    else if (state == ctrlState) {
      //display list of controls
      ctrlList();
    }
    else if (state == loseState) {
      //lose screen
      l.display();
    }
  }
  if (state == pauseState || state == shopState) {
    proTips();
  }
}
void keyPressed() {
  ///switch states using keys
  if (state > startState) {
    if (key == 'c') {
      state = ctrlState;
    }
    if (key == 'p') {
      p.set();
    }
    if (key == 'r') {
      g.set();
    }
    if (key == 's') {
      sh.set();
    }
    if (key == 'q') {
      g.reset();
    }
  }
}

void mousePressed() {
  if (state == gameState) {
    if (mouseButton == LEFT) {
      g.mouseMode = !g.mouseMode;
    }
  }
}

