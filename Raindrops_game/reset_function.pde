void reset() {
  state = startState;
  gi.reset();
  while (rain.size () > 0) {
    rain.remove(0);
  }
  constructors();
  initialize();
}

