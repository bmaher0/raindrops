void game() {
  if (gameState == 1) {  
    background(0);
    t.update(rate);
    //display catcher
    c.update();
    c.display();
    //display raindrops
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.display();
      drop.update();
      // if caught, remove raindrop
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) < drop.d/2+c.d/2) {
        points+=drop.vel.y;
        rain.remove(i);
        rain.add(new Raindrops());
      }
      //if falls, lose game
      if (drop.loc.x >= width) {
        gameState = 4;
      }
    }
    //adds rain every (rate) milliseconds
    if (t.check) {
      rain.add(new Raindrops());
    }
    score = points + oldPoints;
  }
}

