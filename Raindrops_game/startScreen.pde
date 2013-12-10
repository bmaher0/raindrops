void startScreen() {
  if (button(width/4, height/4, width/2, height/2)) {
    start = true;
  }
  rect(width/4, height/4, width/2, height/2);
}

boolean button(int x, int y, int w, int h) {
  if (mousePressed && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  }
  else {
    return false;
  }
}
