class LoseMenu {
  LoseMenu() {
  }
  void set() {
    //state state to lose
    state = loseState;
  }
  void display() {
    //obnoxious lose screen, flash colors and annoying text
    colorMode(HSB, random(360), 100, 100);
    background(random(360), 100, 100);
    textSize(75);
    textAlign(CENTER);
    fill(random(360), 100, 100);
    text("UR LOZER lOL", width/2, height/2);
    //display final score with backing rectangle
    textSize(25);
    colorMode(RGB, 255, 255, 255);
    rectMode(CENTER);
    fill(0);
    noStroke();
    rect(width/2, height/4, 200, 50);
    fill(255);
    text("END SCORE: "+g.score, width/2, height/4);
    //reset button rectangle
    rectMode(CORNER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //reset button text/restting functionality
    textAlign(CENTER);
    fill(240, 100, 100);
    strokeWeight(5);
    stroke(360, 100, 100);
    rect(width/4, height*7/9, width/2, height/9);
    fill(360, 100, 100);
    text("Reset game", width/2, height*15/18);
    //if mouse is pressed and within the rectangle, then go to startmenu
    if (button(width/4, height*7/9, width/2, height/9)) {
      g.reset();
    }
  }
}
class PauseMenu {
  PauseMenu() {
  }
  //sets state to paused
  void set() {
    state = pauseState;
    g.tip = int(random(proTips.length)-.01);
  }
  //shows rectangle that, if clicked, will resume game
  void resumeButton() {  
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //rectangle/text
    fill(0, 100, 100);
    strokeWeight(5);
    stroke(120, 100, 100);
    rect(width/4, height/9, width/2, height/9);
    fill(120, 100, 100);
    text("Resume", width/2, height*3/18);
    //if mouse clicked with rectangle, resume game
    if (button(width/4, height/9, width/2, height/9)) {
      g.set();
    }
  }
  //show rectangle that, if clicked, will open shop menu
  void shopButton() {
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //rectangle/text
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height/3, width/2, height/9);
    fill(0, 100, 100);
    text("Open shop", width/2, height*7/18);
    //if mouse clicked with rectangle, open shop
    if (button(width/4, height/3, width/2, height/9)) {
      sh.set();
    }
  }
  //shows rectangle that, if clicked, resets game
  void resetButton() {
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //Reset button
    fill(240, 100, 100);
    strokeWeight(5);
    stroke(360, 100, 100);
    rect(width/4, height*5/9, width/2, height/9);
    fill(360, 100, 100);
    text("Reset game", width/2, height*11/18);
    if (button(width/4, height*5/9, width/2, height/9)) {
      g.reset();
    }
  }
}
//shop menu class
class Shop {
  Shop() {
  }
  //opens shop state
  void set() {
    state = shopState;
    for (int i = 0; i < upgrades.length; i++) {
      upgrades[i].boughtTime = millis();
    }
    g.tip = int(random(proTips.length)-.01);
  }
  void display() {
    //allows upgrades to properly displayed
    colorMode(HSB, 360, 100, 100);
    textSize(20);
    //displays all upgrades
    for (int i = 0; i < upgrades.length; i++) {
      upgrades[i].display();
      upgrades[i].update();
    }
    //return to menu button
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height*7/9, width/2, height/9);
    fill(0, 100, 100);
    text("Back to menu", width/2, height*15/18);
    //if rectangle is clicked, return to menu
    if (button(width/4, height*7/9, width/2, height/9)) {
      p.set();
    }
  }
}
class StartMenu {
  StartMenu() {
  }
  //set state to start menu
  void set() {
    state = startState;
  }
  void display() {
    //draws reset button
    colorMode(HSB, 360, 100, 100);
    textSize(20);
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height/3, width/2, height/9);
    fill(240, 100, 100);
    textAlign(CENTER);
    text("START GAME", width/2, height*7/18);
    //display control info
    textSize(10);
    textAlign(CENTER);
    fill(255);
    text("CONTROLS: \n r - resume \n s - shop \n q - quick reset \n left mouse - toggle Mouse Mode and Key Mode \n Mouse Mode (easy):\n Mouse- move catcher\n A-D Mode (hard): \n a: move left \n d: move right", width/2, height/2);
  }
  void update() {
    //if clicked, then start game
    if (button(width/4, height/3, width/2, height/9)) {
      state = gameState;
    }
  }
}

