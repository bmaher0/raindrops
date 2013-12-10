boolean button(int x, int y, int w, int h) {
  if (mousePressed && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  }
  else {
    return false;
  }
}

void displayScore() {
  colorMode(RGB, 255, 255, 255);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("Points:"+points, width/2, height-25);
  textSize(10);
  text("Score:"+score, width/2, height-10);
}

void pauseMenu() {
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
    paused = false;
  }
  //Shop button
  fill(120, 100, 100);
  strokeWeight(5);
  stroke(240, 100, 100);
  rect(width/4, height/3, width/2, height/9);
  fill(240, 100, 100);
  text("Open shop", width/2, height*7/18);
  if (button(width/4, height/3, width/2, height/9)) {
    shopOpen = true;
  }
    //Reset button
  fill(240, 100, 100);
  strokeWeight(5);
  stroke(360, 100, 100);
  rect(width/4, height*5/9, width/2, height/9);
  fill(360, 100, 100);
  text("Reset game", width/2, height*11/18);
  if (button(width/4, height/3, width/2, height/9)) {
    start = false;
  }
}

void startMenu() {
  stroke(0);
  strokeWeight(1);
  if (button(width/4, height/4, width/2, height/2)) {
    start = true;
  }
  rect(width/4, height/4, width/2, height/2);
}

