boolean button(int x, int y, int w, int h) {
  if (mousePressed && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  }
  else {
    return false;
  }
}

void shop() {
  colorMode(HSB, 360, 100, 100);
  textSize(20);
  //return to menu button
  fill(120, 100, 100);
  strokeWeight(5);
  stroke(240, 100, 100);
  rect(width/4, height*7/9, width/2, height/9);
  fill(240, 100, 100);
  text("Back to menu", width/2, height*15/18);
  if (button(width/4, height*7/9, width/2, height/9)) {
    state = 2;
  }
  //coming soon text
  text("SHOP COMING SOON", width/2, height/2);
}

