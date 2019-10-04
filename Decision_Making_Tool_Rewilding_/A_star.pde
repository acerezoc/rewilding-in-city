void A_star() { 
  pushMatrix();
  pushStyle();
  if (openSet.size()<1) {
    current = select_;
  }
  if (openSet.size()>0) {
    IntList neighborsList = new IntList();
    for (int A : openSet) {
      for (int i : Hexagons.get(A).neighbors) {
        if (!neighborsList.hasValue(i)) {
          neighborsList.append(i);
        }
      }
    }
    removeFromArray(neighborsList, openSet);
    for ( int i : neighborsList) {
      if (!Hexagons.get(i).wall) {
        stroke(#004628);
        strokeWeight(0.2);
        GRID.points[i].display();
        if ( Hexagons.get(i).value>1.45) {
   
          openSet.append(i);
        }
      }
    } 
      for (int i : openSet) {
        if (Hexagons.get(i).value <= 10) {
          Hexagons.get(i).value += 0.005*Hexagons.get(i).value;
        }
        for (int j : Hexagons.get(i).neighbors) {
          if (Hexagons.get(j).value <= 10 ) {
            Hexagons.get(j).value += 0.0001*Hexagons.get(j).value+closedSet.size()*0.0000005+sumnum*0.0000005;
          }
        }
      }
      year +=0.5;
    } 
  popMatrix();
  popStyle();
  sumnum = 0;
  for (int i : openSet) {
    float num = Hexagons.get(i).value;
    sumnum += num;
    if (!closedSet.hasValue( i)) { 
      closedSet.append(i);
    }
  }
  for (int i : closedSet) {
    PVector close = GRID.Terrain[i];
    IntList close_neightbour = Util.pointsInRadius(close, GRID.Terrain, 15);  
    for (int j : close_neightbour) {
      if ( !closedSet_neightbors.hasValue(j) && Hexagons.get(j).wall==false && GRID.SUM_public.get(j)+GRID.SUM_educat.get(j)+GRID.SUM_Changi.get(j)+GRID.SUM_reside.get(j)>0.5){
        closedSet_neightbors.append(j);
      }
    }
  }
}

//---------------HELP FUNCTION--------------------------
void removeFromArray(IntList a, IntList b) {
  for ( int i = a.size() - 1; i>= 0; i-- ) {
    if (b.hasValue(a.get(i))) {
      a.remove(i);
    }
  }
}
void removeFromArraySingle(IntList a, int b) {
  for ( int i = a.size() - 1; i>= 0; i-- ) {
    if (b==a.get(i)) {
      a.remove(i);
    }
  }
}
