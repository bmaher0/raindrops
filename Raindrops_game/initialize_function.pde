//construct objects
void constructors() {
  //construct Game
  g = new Game();
  //add raindrops
  for (int i = 0; i < 5; i++) {
    rain.add(new Raindrops());
  }
  //construct Catcher
  c = new Catcher();
  //construct Timer
  t = new Timer();
  //construct StartMenu
  s = new StartMenu();
  //construct PauseMenu
  p = new PauseMenu();
  //construct LoseMenu;
  l = new LoseMenu();
  //construct upgrade locs
  /* 
   upgrade 1 = extra life 
   upgrade 2 = bigger catcher
   upgrade 3 = slower spawn rate
   */
  upgradeInfo[0][0] = new PVector(width/4, height/9);
  upgradeInfo[1][0] = new PVector(width/4, height/3);
  upgradeInfo[2][0] = new PVector(width*9/16, height/9);
  upgradeInfo[3][0] = new PVector(width*9/16, height/3);
  //construct upgrade sizes
  upgradeInfo[0][1] = new PVector(width*3/16, height/9);
  upgradeInfo[1][1] = new PVector(width*3/16, height/9);
  upgradeInfo[2][1] = new PVector(width*3/16, height/9);
  upgradeInfo[3][1] = new PVector(width*3/16, height/9);
  for (int i = 0; i < upgrades.length; i++) {
    upgrades[i] = new Upgrade(i);
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
  upgradeText[0] = "+ Life";
  upgradeText[1] = "Bigger Catcher";
  upgradeText[2] = "Fewer Drops";
  upgradeText[3] = "Slower Drops";
}

