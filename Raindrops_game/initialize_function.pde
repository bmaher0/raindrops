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
  //construct LoseMenu;
  l = new LoseMenu();
  //construct upgrade locs
  upgradeInfo[0][0] = new PVector(width/4, height/9);
  upgradeInfo[1][0] = new PVector(width/4, height/3);
  //construct upgrade sizes
  upgradeInfo[0][1] = new PVector(width*3/16, height/9);
  upgradeInfo[1][1] = new PVector(width*3/16, height/9);
  for (int i = 0; i < upgrades.length; i++) {
    upgrades[i] = new Upgrade(upgradeInfo[i][0].x, upgradeInfo[i][0].y, upgradeInfo[i][1].x, upgradeInfo[i][1].y, i);
  }
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
  upgradeText[0] = "+ Life";
  upgradeText[1] = "+ Catcher";
}

