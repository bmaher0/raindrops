//if clicked within rect(x, y, w, h), then true
boolean button(float x, float y, float w, float h) {
  if (mousePressed && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  }
  else {
    return false;
  }
}
//display controls list
void ctrlList() {
  textAlign(CENTER);
  textSize(15);
  fill(255);
  text("CONTROLS: \n r - resume \n s - shop \n q - quick reset \n left mouse - toggle Mouse Mode and Key Mode \n Mouse Mode (easy):\n Drag mouse to move catcher\n A-D Mode (hard): \n a: move left \n d: move right", width/2, height/3);
  //resume button method from pause menu
  p.resumeButton();
}
//displays protips
void proTips() {
  textAlign(CENTER);
  fill(255);
  textSize(15);
  text("Pro Tip: "+proTips[g.tip], width/2, height*13/18);
}

