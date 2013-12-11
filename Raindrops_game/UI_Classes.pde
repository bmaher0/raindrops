class PauseMenu {
  PauseMenu() {
  }
  void resumeButton() {  
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //Resume button
    fill(0, 100, 100);
    strokeWeight(5);
    stroke(120, 100, 100);
    rect(width/4, height/9, width/2, height/9);
    fill(120, 100, 100);
    text("Resume", width/2, height*3/18);
    if (button(width/4, height/9, width/2, height/9)) {
      gameState = 1;
    }
  }
  void shopButton() {
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height/3, width/2, height/9);
    fill(240, 100, 100);
    text("Open shop", width/2, height*7/18);
    if (button(width/4, height/3, width/2, height/9)) {
      gameState = 3;
    }
  }
  void resetButton() {
    fill(240, 100, 100);
    strokeWeight(5);
    stroke(360, 100, 100);
    rect(width/4, height*5/9, width/2, height/9);
    fill(360, 100, 100);
    text("Reset game", width/2, height*11/18);
    if (button(width/4, height*5/9, width/2, height/9)) {
      reset();
    }
  }
}
class StartMenu {
  StartMenu() {
  }
  void display() {
    //start button
    colorMode(HSB, 360, 100, 100);
    textSize(20);
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height/3, width/2, height/9);
    fill(240, 100, 100);
    textAlign(CENTER);
    text("START GAME", width/2, height*7/18);
    //control info
    textSize(10);
    textAlign(CENTER);
    fill(255);
    text("CONTROLS: \n Mouse- move catcher \n p - pause \n r - resume \n s - shop", width/2, height/2);
  }
  void update() {
    //button
    if (button(width/4, height/3, width/2, height/9)) {
      gameState = 1;
    }
  }
}

