void reset() {
  background(0);
  gameState = 0;
  while (rain.size () > 0) {
    rain.remove(0);
  }
  constructors();
  initialize();
}

