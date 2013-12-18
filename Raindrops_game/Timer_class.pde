class Timer {
  //check will be true every timerRate milliseconds
  int currentTime;
  int oldTime;
  boolean check;

  Timer() {
    oldTime = 0;
  }

  //timer class, returns check as true every (timeRate) milliseconds
  void update() {
    currentTime = millis();
    if (currentTime - oldTime > g.rate) {
      oldTime = currentTime;
      check = true;
    } 
    else { 
      check = false;
    }
  }
}

