class Timer {
  //check will be true every timerRate milliseconds
  int timeRate;
  int currentTime;
  int oldTime;
  boolean check;

  Timer() {
    oldTime = 0;
  }

  void update(int Rate) {
    timeRate = Rate;
    currentTime = millis();
    if (currentTime - oldTime > timeRate) {
      oldTime = currentTime;
      check = true;
    } 
    else { 
      check = false;
    }
  }
}

