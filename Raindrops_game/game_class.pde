//the game itself
class Game {
  Game() {
  }
  void display() { 
    //update Timer
    t.update();
    //update Catcher
    c.update();
    c.display();
    //display raindrops
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.display();
    }
  }
  void update() {
    for (int i = 0; i < rain.size(); i++) {
      Raindrops drop = rain.get(i);
      drop.update();
      // if caught, remove raindrop
      if (dist(drop.loc.x, drop.loc.y, c.loc.x, c.loc.y) < drop.d/2+c.d/2) {
        if (abs(c.hue%360 - drop.hue%360) < 60) {
          gi.score+=3*drop.vel.y;
        } 
        else {
          gi.score+=drop.vel.y;
        }        
        rain.remove(i);
        rain.add(new Raindrops());
      }
      //if falls, lose game
      if (drop.loc.y > height) {
        gi.lives--;
        rain.remove(i);
      }
    }
    //adds rain every (rate) milliseconds
    if (t.check) {
      rain.add(new Raindrops());
    }
  }
}

