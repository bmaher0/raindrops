void displayScore() {
  colorMode(RGB, 255, 255, 255);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("Points:"+points, width/2, height-25);
  textSize(10);
  text("Score:"+score, width/2, height-10);
}

