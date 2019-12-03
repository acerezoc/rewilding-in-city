void Natural_Expansion() { 

  pushMatrix();
  pushStyle();

  if (Natrual_Improving.size()<1) {
    current = select_;
  }
  if (Natrual_Improving.size()>0&&year<TIMELINE) {
    IntList neighborsList = new IntList();
    for (int A : Natrual_Improving) {
      for (int i : DATA_INPUT.Single_Features[A].neighbors) {
        if (!neighborsList.hasValue(i)) {
          neighborsList.append(i);
        }
      }
    }

    removeFromArray(neighborsList, Natrual_Improving);

    for ( int i : neighborsList) {
      fill(#6491aa);
      noStroke();
      DATA_INPUT.Single_Features[i].display(DATA_INPUT.Single_Features[i].Environmental_value);
      if ( DATA_INPUT.Single_Features[i].Environmental_value>=THRESHOLD_) {
        Natrual_Improving.append(i);
      }
    }

    for (int i : Natrual_Improving) {
      if (DATA_INPUT.Single_Features[i].Environmental_value<THRESHOLD_+Calculator(i)+1) {
        DATA_INPUT.Single_Features[i].Environmental_value += DATA_INPUT.Single_Features[i].Environmental_value*0.00005 + Natrual_Improved.size()*0.00005*IMPACT_DEGREE;
      }

      for (int j : DATA_INPUT.Single_Features[i].neighbors) {
        if (DATA_INPUT.Single_Features[j].Environmental_value <= THRESHOLD_) {
          DATA_INPUT.Single_Features[j].Environmental_value += 0.00005*DATA_INPUT.Single_Features[j].Environmental_value*IMPACT_DEGREE;
        }
      }
    }
    year+=0.5;
  }

  popMatrix();
  popStyle();
  for (int i : Natrual_Improving) {
    if (!Natrual_Improved.hasValue(i)) { 
      Natrual_Improved.append(i);
    }
  }
}
void Social_Impact() { 
  Social_Impact.clear();
  for (int i : Natrual_Improved) {
    IntList Natrual_Improved_neightbour = Util.pointsInRadius(DATA_INPUT.Single_Features[i].x_location, DATA_INPUT.Single_Features[i].y_location, DATA_INPUT.X_Coordinate, DATA_INPUT.Y_Coordinate, SOCIAL_RADIUS/25);  
    for (int j : Natrual_Improved_neightbour) {
      if ( !Social_Impact.hasValue(j) ) {
        Social_Impact.append(j);
      }
    }
  }
}
