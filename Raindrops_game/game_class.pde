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
  boolean mouseMode;
  int tip;

  Game() {
    //initialize score and points
    score = 0;
    points = 0;
    //initialize oldPoints, the sum of all points spent
    oldPoints = 0;
    //intializes a bunch of things
    lives = 3;
    rate = 5500;
    rateLower = 0;
    //default max acc, not lowered at all
    maxAcc = .01;
    accLower = 0;
    //mouseMode is true by default
    mouseMode = true;
    //tips initialized at -1, so it will be 0 when called
    tip = -1;
  }
  void set() {
    state = gameState;
  }
  void display() { 
    //update Timer
    t.update();
    //update catcher
    c.update();
    //display catcher
    c.display();
    //display all raindrops
    for (int i = 0; i < rain.size(); i++) {
      rain.get(i).display();
    }
  }
  void displayInfo() {
    //display points and lives
    colorMode(RGB, 255, 255, 255);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("Points:"+points, width/2, height-25);
    text("Lives:"+lives, 50, height-15);
    //if Mouse Mode, display "Mouse Mode"
    if (mouseMode) {
      text("Mouse Mode", width-75, height-15);
    }
    //if A-D Mode (!mouseMode), display"A-D Mode"
    else {
      text("A-D Mode", width-75, height-15);
    }
    //display score
    textSize(10);
    text("Score:"+score, width/2, height-10);
  }
  void reset() {
    //set state to startState
    s.set();
    //remove all raindrops from arrayList
    while (rain.size () > 0) {
      rain.remove(0);
    }
    //reset variables using constructors() and initialize();
    constructors();
    initialize();
  }
  //declare function to update variables
  void update() {
    //determine the rate of raindrop generation as a function of score
    rate = int(5000*exp(-.0005*(score-10*rateLower)))+500;
    //determine max as a function of score
    maxAcc = .05 + score/10000 - accLower;
    //if maxAcc is below .01, reset it to .01
    if (maxAcc < .01) {
      maxAcc = .01;
    }
    //for every raindrop
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      //update the raindrop
      drop.update();
      // if the drop touches the catcher
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) < drop.d/2+c.d/2) {
        //if the drop is a shrub
        if (drop.shrub) {
          //if Mouse Mode
          if (mouseMode) {
            //increase lives by 1
            lives++;
          } 
          //if A-D mode
          else {
            //increase lives by 3
            lives+=3;
          }
        } 
        //if the drop is a drop
        else {
          //if Mouse Mode
          if (mouseMode) {
            //increase score by y vel of drop
            score+=drop.vel.y;
          } 
          //if A-D Mode
          else {
            //increase score by 4 times the y vel of drop
            score+=4*drop.vel.y;
          }
        }
        //remove the raindrop from the game
        rain.remove(i);
        //add a new raindrop
        rain.add(new Raindrops());
      }
      //if falls
      if (drop.loc.y > height) {
        //subtract a life if it is not godMode
        if (!godMode) {
          lives--;
        }
        //remove the drop
        rain.remove(i);
      }
    }
    //adds rain every (rate) milliseconds
    if (t.check) {
      rain.add(new Raindrops());
    }
  }
  void updateInfo() {
    //subtracts oldPoints from score to get points
    points = score - oldPoints;
    //if lives is less than 1
    if (lives < 1) {
      //lose the game
      l.set();
    }
  }
}

