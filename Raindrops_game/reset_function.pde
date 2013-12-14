void reset() {
  background(0);
  state = startState;
  while (rain.size() > 0) {
    rain.remove(0);
  }
  constructors();
  initialize();
}

