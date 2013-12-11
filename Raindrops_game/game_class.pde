//the game itself
class Game {
  void display() { 
    c.display();
    //display raindrops
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.display();
    }
  }
  void update() {
    //update Timer
    t.update(rate);
    //update Catcher
    c.update();
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.update();
      // if caught, remove raindrop
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) < drop.d/2+c.d/2) {
        points+=drop.vel.y;
        rain.remove(i);
        rain.add(new Raindrops());
      }
      //adds rain every (rate) milliseconds
      if (t.check) {
        rain.add(new Raindrops());
      }
      score = points + oldPoints;
    }
  }
}

