//construct objects
void constructors() {
  //add raindrops
  for (int i = 0; i < 5; i++) {
    rain.add(new Raindrops());
  }
  //construct Catcher
  c = new Catcher();
  //construct Timer
  t = new Timer();
  //construct Game
  g = new Game();
  //construct StartMenu
  s = new StartMenu();
  //construct PauseMenu
  p = new PauseMenu();
  gi = new GameInfo();
}

//initialize variables
void initialize() {
  noStroke();
  startState = 0;
  gameState = 1;
  pauseState = 2;
  shopState = 3;
  loseState = 4;
  state = startState;
  minSize = 25;
  maxSize = 50;
  catcherD = 100;
}

