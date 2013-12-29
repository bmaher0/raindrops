//declare function to construct objects
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
  //construct LoseMenu
  l = new LoseMenu();
  //constrcut shop
  sh = new Shop();
  //raindrop/shrib images
  rd = loadImage("raindrop.png");
  sr = loadImage("shrub.png");
  /* 
   upgrade 1 = extra life 
   upgrade 2 = bigger catcher
   upgrade 3 = slower spawn rate
   upgrade 4 = lower drop acc
   */
  //construct upgrade locs
  upgradeInfo[0][0] = new PVector(width/4, height/9);
  upgradeInfo[1][0] = new PVector(width/4, height/3);
  upgradeInfo[2][0] = new PVector(width*9/16, height/9);
  upgradeInfo[3][0] = new PVector(width*9/16, height/3);
  //construct upgrade sizes
  upgradeInfo[0][1] = new PVector(width*3/16, height/9);
  upgradeInfo[1][1] = new PVector(width*3/16, height/9);
  upgradeInfo[2][1] = new PVector(width*3/16, height/9);
  upgradeInfo[3][1] = new PVector(width*3/16, height/9);
  //create upgrade objects
  for (int i = 0; i < upgrades.length; i++) {
    upgrades[i] = new Upgrade(i);
  }
}

//declare function to initialize variables
void initialize() {
  noStroke();
  //initialize states
  startState = 0;
  gameState = 1;
  pauseState = 2;
  shopState = 3;
  ctrlState = 4;
  loseState = 5;
  //initialize state to startstate
  state = startState;
  //intialize min and max size of raindrop
  minSize = 25;
  maxSize = 50;
  //initialize upgradeText 
  upgradeText[0] = "+ Life";
  upgradeText[1] = "Bigger Catcher";
  upgradeText[2] = "Fewer Drops";
  upgradeText[3] = "Slower Drops";
}

