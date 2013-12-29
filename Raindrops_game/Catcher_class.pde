class Catcher {
  PVector loc;
  int d;
  int keySpeed;
  PImage umb;

  Catcher() {
    //diameter of catcher
    d = 100;
    //starting loc
    loc = new PVector(width/2, height-50-d);
    //on A-D mode, each keypress moves 3 pixels
    keySpeed = 3;
    //umbrella image
    umb = loadImage("umbrella.png");
  }

  void update() {
    //sets catcher position
    if (g.mouseMode) {
      //if on mouseMode, catcher is controlled by mouse movement
      loc.x = mouseX;
      loc.y = height-50-d/2;
    }
    else {
      //if not on mousemode, catcher is controlled by pressing A and D
      if (key == 'a') {
        //move left
        c.loc.x-=keySpeed;
      }
      if (key == 'd') {
        //move right
        c.loc.x+=keySpeed;
      }
    }
  }

  void display() {
    //display catcher umbrella
    imageMode(CENTER);
    image(umb, loc.x, loc.y, d, d);
  }
}

