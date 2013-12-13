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
  if (state == 0) {
    s.display();
    s.update();
  } 
  if (state == 1) {
    g.update();
    g.display();
  } 
  if (state == 2) {
    p.resumeButton();
    p.shopButton();
    p.resetButton();
  } 
  if (state == 3) {
    shop();
  } 
  if (state == 4) {
    lose();
  } 
  if (state > 0) {
    //run unless at start
    gi.display();
    gi.update();
  }
}
void keyPressed() {
  if (state > 0) {
    if (key == 'p') {
      state = 2;
    }
    if (key == 'r') {
      state = 1;
    }
    if (key == 's') {
      state = 3;
    }
  }
}

