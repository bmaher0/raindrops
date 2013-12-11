//construct objects
void constructors() {
  //add raindrops
  for (int i = 0; i < 5; i++) {
    rain.add(new Raindrops());
  }
  //construct catcher
  c = new Catcher();
  //construct timer
  t = new Timer();
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
