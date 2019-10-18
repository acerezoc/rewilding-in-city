class otter {
  IntList locs;
  int loc;
  int winner;
  IntList Founds;
  FloatList tmp_weights;
  IntList FoundsChoice;
  PVector location;

  otter(int loc_) { 
    loc = loc_;
    location = GRID.Terrain[loc];
    Founds = Util.pointsInRadius(location, GRID.Terrain, 10);   
    locs = new IntList();
    FoundsChoice = new IntList();
    tmp_weights = new FloatList();
  }
  
  void display() {
    point(Hexagons.get(loc).x, Hexagons.get(loc).y);
    pushStyle();
    noFill();
    beginShape();
    for (int i : locs) {
      stroke(204, 102, 0);
      strokeWeight(0.4);      
      vertex(Hexagons.get(i).x, Hexagons.get(i).y);
    }
    endShape();
    popStyle();
  }

  void update() {
    
    for (int i : Founds) {
      tmp_weights.append(Hexagons.get(i).value);
      int Time = int ( Hexagons.get(i).value * 10);
      for (int j = 0; j < Time; j++) {
        FoundsChoice.append(i);
      }
    }

    loc = FoundsChoice.get(int(random(0, FoundsChoice.size())));
    FoundsChoice.clear();
    if (Hexagons.get(loc).value < 3 && Hexagons.get(loc).value > 1.45 ) {
      locs.append(loc);
      Hexagons.get(loc).value += 0.01;  
    }
    if (Hexagons.get(loc).value>1.45) {
      location = GRID.Terrain[loc];
      Founds = Util.pointsInRadius(location, GRID.Terrain, 5);
    }
  }
}
