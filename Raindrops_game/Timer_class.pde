class Timer {
  //check will be true every timerRate milliseconds
  int oldTime;
  boolean check;

  Timer() {
    oldTime = 0;
  }

  void update() {
    //if it has been g.rate milliseconds since last check == true, then check == true
    if (millis() - oldTime > g.rate) {
      oldTime = millis();
      check = true;
    } 
    //if not, check == false
    else { 
      check = false;
    }
  }
}

