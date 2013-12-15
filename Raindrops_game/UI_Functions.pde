//if clicked within rect(x, y, w, h), then true
boolean button(float x, float y, float w, float h) {
  if (mousePressed && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  }
  else {
    return false;
  }
}

//displays shop
void shop() {
  colorMode(HSB, 360, 100, 100);
  textSize(20);
  for (int i = 0; i < upgrades.length; i++) {
    upgrades[i].display();
    upgrades[i].update();
  }
  //return to menu button
  fill(120, 100, 100);
  strokeWeight(5);
  stroke(240, 100, 100);
  rect(width/4, height*7/9, width/2, height/9);
  fill(240, 100, 100);
  text("Back to menu", width/2, height*15/18);
  if (button(width/4, height*7/9, width/2, height/9)) {
    state = pauseState;
  }
}

