//if clicked within rect(x, y, w, h), then true
boolean button(float x, float y, float w, float h) {
  if (mousePressed && mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  }
  else {
    return false;
  }
}
void ctrlList() {
  textAlign(CENTER);
  textSize(15);
  fill(255);
  text("CONTROLS: \n r - resume \n s - shop \n q - quick reset \n left mouse - toggle Mouse Mode and Key Mode \n Mouse Mode:\n Mouse- move catcher\n A-D Mode: \n a: move left \n d: move right", width/2, height/3);
  p.resumeButton();
}
//displays protips
void proTips() {
  if (g.tip >= proTips.length) {
    g.tip = 0;
  }
  textAlign(CENTER);
  fill(255);
  textSize(15);
  text("Pro Tip: "+proTips[g.tip], width/2, height*13/18);
}

