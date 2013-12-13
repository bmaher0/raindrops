void reset() {
  background(0);
  state = 0;
  while (rain.size() > 0) {
    rain.remove(0);
  }
  constructors();
  initialize();
}

