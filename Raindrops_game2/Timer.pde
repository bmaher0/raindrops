class timer {
  int currentTime;
  int oldTime;
  int number;
  boolean check;

  timer(int n) {
    currentTime = 0;
    oldTime = 0;
    number = n;
  }

  void update() {
    currentTime = millis();
    if (currentTime - oldTime > number) {
      oldTime = currentTime;
      check = true;
    }
  }
}

