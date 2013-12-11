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
}

//initialize variables
void initialize() {
  noStroke();
  gameState = 0;
  minSize = 25;
  maxSize = 50;
  score = 0;
  points = 0;
  oldPoints = 0;
  catcherD = 100;
}
