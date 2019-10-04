class ottersystem {

  ArrayList<otter> otters ;
  float time;
  int loc;

  ottersystem(int loc_) {
    loc=loc_;
    otters = new ArrayList<otter>();
    time = 50;   
    otter f = new otter(loc) ;   
    otters.add(f);
  }

  void display() {
    time += 1;
    
    //---------------New Born--------------------------
    for (int i  = otters.size()-1; i>=0; i--) {
      otter o  = otters.get(i);
      o.display();
      o.update();

      if ( time % 1000== 0 && otters.size()<10 ) {
        otter baby = new otter(o.loc) ;
        otters.add(baby);
      }
    }
    
    //---------------Death--------------------------
    if ( (time % (closedSet.size() + 1000 ) == 0 && 0 < otters.size())) {
      otters.remove(0);
    }
  }
}
