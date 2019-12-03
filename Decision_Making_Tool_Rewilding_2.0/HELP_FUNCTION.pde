class LoadPicture {
  PImage Image;
  float scalex ;
  float scaley ;
  float trans;
  LoadPicture(String PictureName, float scalex_, float scaley_, float trans_) {
    scalex = scalex_;
    scaley = scaley_;
    trans = trans_;
    Image = loadImage(PictureName);
  }
  void  display() {  
    pushMatrix();
    translate(261.6, -82.58);
    //tint(255, trans);
    image(Image, 0, 0, scalex, scaley);
    popMatrix();
  }
}

//--------------------------------------------------------------------------------------------------------------
static class Util {
  public static int closestPoint(PVector select, FloatList x_list, FloatList y_list, int search_radius) {
    float minDistSeen = 100000000;
    int closest = -1;
    PVector[] cloud = new PVector[x_list.size()] ;
    for (int i = 0; i < x_list.size(); i++) {
      cloud[i]=new PVector(x_list.get(i), y_list.get(i));
    }
    for (int i = 0; i < cloud.length; i ++) {     
      float distance = select.dist(cloud[i]);
      if (distance < minDistSeen && distance <= search_radius) {
        closest = i;
        minDistSeen = distance;
      }
    }
    return closest;
  }



  public static IntList pointsInRadius(float x, float y, FloatList x_list, FloatList y_list, float search_radius) {

    IntList result = new IntList();
    PVector position = new PVector(x, y) ;
    PVector[] cloud = new PVector[x_list.size()] ;
    for (int i = 0; i < x_list.size(); i++) {
      cloud[i]=new PVector(x_list.get(i), y_list.get(i));
    }
    for (int i = 0; i < cloud.length; i ++) {
      float distance = position.dist(cloud[i]);
      if (distance <= search_radius && distance!= 0) {
        result.append(i) ;
      }
    }
    return result;
  }
}

//--------------------------------------------------------------------------------------------------------------
public float Calculator(int i) {
  float value = DATA_INPUT.Single_Features[i-1].environmentalComposite*WEIGHT1+
    DATA_INPUT.Single_Features[i-1].riverQuality*WEIGHT2+
    DATA_INPUT.Single_Features[i-1].riverDistance*WEIGHT3+
    DATA_INPUT.Single_Features[i-1].spaceValue*WEIGHT4+
    DATA_INPUT.Single_Features[i-1].railwayDistance*WEIGHT5+
    DATA_INPUT.Single_Features[i-1].roadDistance*WEIGHT6+
    DATA_INPUT.Single_Features[i-1].pM2_5_Conc*UNKNOWN1+
    DATA_INPUT.Single_Features[i-1].traffic*UNKNOWN2;


  return value;
}


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
