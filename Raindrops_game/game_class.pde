//the game itself
class Game {
  int score;
  int points;
  int oldPoints;
  int lives;
  int rate;
  int rateLower;
  float maxAcc;
  float accLower;

  Game() {
    score = 0;
    points = 0;
    oldPoints = 0;
    lives = 3;
    rate = 5500;
    rateLower = 0;
    maxAcc = .01;
    accLower = 0;
  }
  void display() { 
    //update Timer
    t.update();
    //update Catcher
    c.update();
    c.display();
    //display raindrops
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.display();
    }
  }
  void displayInfo() {
    //display gameinfo text
    colorMode(RGB, 255, 255, 255);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("Points:"+points, width/2, height-25);
    text("Lives:"+lives, 50, height-15);
    textSize(10);
    text("Score:"+score, width/2, height-10);
  }
  void reset() {
    state = startState;
    score = 0;
    points = 0;
    oldPoints = 0;
    lives = 3;
    rate = 0;
    rateLower = 0;
    maxAcc = .05;
    while (rain.size () > 0) {
      rain.remove(0);
    }
    constructors();
    initialize();
  }
  void update() {
    //determine the rate of raindrop generation as a function of score
    rate = int(5000*exp(-.0005*(score-rateLower)))+500;
    maxAcc = .05 + score/10000 - accLower;
    if (maxAcc < .01) {
      maxAcc = .01;
    }
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.update();
      // if caught, remove raindrop
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) < drop.d/2+c.d/2) {
        if (abs(c.hue%360 - drop.hue) < 10) {
          lives++;
        } 
        score+=drop.vel.y;        
        rain.remove(i);
        rain.add(new Raindrops());
      }
      //if falls, lose game
      if (drop.loc.y > height) {
        lives--;
        rain.remove(i);
      }
    }
    //adds rain every (rate) milliseconds
    if (t.check) {
      rain.add(new Raindrops());
    }
  }
  void updateInfo() {
    //update score
    points = score - oldPoints;
    //if lives is less than 1, then you lose
    if (lives < 1) {
      state = loseState;
    }
  }
}
