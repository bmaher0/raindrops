//states
int state, startState, gameState, pauseState, shopState, ctrlState, loseState;
//Array of upgrades
Upgrade[] upgrades = new Upgrade[4];
//locs/sizes of upgrades
PVector[][] upgradeInfo = new PVector[upgrades.length][2];
//upgrade descriptions
String[] upgradeText = new String[upgrades.length];
//array for Pro tips
String[] proTips = {
  "For a harder game with higher scores, play on A-D mode!", "Ms. Gerstein is the best teacher ever!!!", "Green is not a creative color!", "Punch trees for wood", "expect the Spanish Inquisition", "bring me a shubbery", "2 + 2 = 10", "join Team 1257", "The concepts of Gracious Professionalism and Coopertition \n are fundamental parts of the FIRST philosophy.", "finish him!", "Erik's program is probably weirder than this one"
};
//Easter Egg
boolean godMode;
//game objects
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
//drop image
PImage rd;
//shrub image
PImage sr;
//easter egg drop image
PImage nc;
//easter egg background
PImage gn;

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
  //if godMode, make the background cn.png
  if (!godMode) {
    background(0);
  } 
  else {
    background(gn);
  }
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
  //at pause and shop menus, display protips
  if (state == pauseState || state == shopState) {
    proTips();
  }
}
void keyPressed() {
  //switch states using keys
  //runs if not at startmenu
  if (state > startState) {
    //if c, then show controls
    if (key == 'c') {
      state = ctrlState;
    }
    //if p, then pause game
    if (key == 'p') {
      p.set();
    }
    //if r, then resume game
    if (key == 'r') {
      g.set();
    }
    //if s, then open shop
    if (key == 's') {
      sh.set();
    }
    //if q, quick reset game
    if (key == 'q') {
      l.set();
    }
    //if g, then godMode
    if (key == 'g') {
      godMode = true;
    }
    
  }
}

void mousePressed() {
  //if left mouse is pressed during the game, toggle mouseMode
  if (state == gameState) {
    if (mouseButton == LEFT) {
      g.mouseMode = !g.mouseMode;
    }
  }
}

