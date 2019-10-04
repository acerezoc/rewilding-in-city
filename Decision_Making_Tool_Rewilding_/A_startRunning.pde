void A_starrunning() {
  if (winner == end){return;}
  pushMatrix();
  pushStyle();
  Hexagons.get(winner).f = 1000;
  if (openSet2.size()>0) {
    for (int A : openSet2) {
      if (Hexagons.get(A).f+Calculator(A)*200 < Hexagons.get(winner).f+Calculator(winner)*200) {
        winner = A;
      }
    }
    current_running = winner;
    if (current_running == end) {
      println("DONE");
    }
    removeFromArray2(openSet2, current_running);
    closedSet2.append(current_running);
    neighbors2 = Hexagons.get(current_running).neighbors;
    for (int i : neighbors2) {
      int neighbor =  i;  
      if (!closedSet2.hasValue(neighbor)&&!Hexagons.get(neighbor).wall) {
        float TempG = Hexagons.get(current_running).g +1 ;//Define the plus value
        boolean newPath = false;
        if (openSet2.hasValue(neighbor)) {
          if (TempG < Hexagons.get(neighbor).g) {
            Hexagons.get(neighbor).g = TempG;
            newPath = true;
          }
        } else {
          Hexagons.get(neighbor).g = TempG;
          newPath = true;
          openSet2.append(neighbor);
        }
        if (newPath) {
          Hexagons.get(neighbor).h = heuristic(neighbor, end);//so important step
          Hexagons.get(neighbor).f = Hexagons.get(neighbor).g + Hexagons.get(neighbor).h;
          Hexagons.get(neighbor).previous = current_running;
          Hexagons.get(neighbor).pathboolean.append(Hexagons.get(neighbor).previous );
        }
      }
    }
    for (int i : closedSet2) {
      stroke(0, 255, 0);
      GRID.points[i].display();
    }
    for (int i : openSet2) {
      stroke(255, 255, 0);
      GRID.points[i].display();
    }
    path = new IntList();
    int temp = current_running;
    path.append(temp);
    while ( Hexagons.get(temp).pathboolean.size()>0) {
      path.append(Hexagons.get(temp).previous );
      temp = Hexagons.get(temp).previous;
    }
    noFill();
    beginShape();
    stroke(100, 149, 237);
    strokeWeight(1);
    for (int i : path) {
      vertex(GRID.points[i].x, GRID.points[i].y);
    }
    endShape();
  }
  popMatrix();
  popStyle();
}

//---------------HELP FUNCTION--------------------------
void removeFromArray2(IntList a, int b) {
  for ( int i = a.size() - 1; i>= 0; i-- ) {
    if (a.get(i) == b) {
      a.remove(i);
    }
  }
}
public  float  heuristic(int a, int b) {
  float d = dist(Hexagons.get(a).x, Hexagons.get(a).y, Hexagons.get(b).x, Hexagons.get(b).y);
  return d;
}
