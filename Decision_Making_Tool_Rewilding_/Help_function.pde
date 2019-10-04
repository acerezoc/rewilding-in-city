static class Util {

  //--------------------------------------------------------------------------------------------------------------
  public static int closestPoint(PVector point, PVector[] point_cloud, int search_radius) {
    float minDistSeen = 100000000;
    int closest = -1;
    for (int i = 0; i < point_cloud.length; i ++) {
      float distance = point.dist(point_cloud[i]);
      if (distance < minDistSeen && distance <= search_radius) {
        closest = i;
        minDistSeen = distance;
      }
    }
    return closest;
  }
  
  //--------------------------------------------------------------------------------------------------------------
  public static IntList network(int point, IntList point_cloud, int search_radius, PVector[] Terrain) {
    IntList  result = new IntList();

    for (int i : point_cloud ) {

      float distance = dist(Terrain[point].x, Terrain[point].y, Terrain[i].x, Terrain[i].y);
      if (distance <= search_radius && distance!= 0) {
        result.append(i);
      }
    }
    return result;
  }

//--------------------------------------------------------------------------------------------------------------
  public static IntList pointsInRadius(PVector point, PVector[] point_cloud, float search_radius) {
    IntList result = new IntList();
    for (int i = 0; i < point_cloud.length; i ++) {
      float distance = point.dist(point_cloud[i]);
      if (distance <= search_radius && distance!= 0) {
        result.append(i) ;
      }
    }
    return result;
  }
}

//--------------------------------------------------------------------------------------------------------------
class LoadPicture {
  PImage Image;
  float scalex ;
  float scaley ;
  LoadPicture(String PictureName, float scalex_, float scaley_) {
    scalex = scalex_;
    scaley = scaley_;
    Image = loadImage(PictureName);
  }
  void  display() {  
    pushMatrix();
    translate(260.3, -82.58);
    image(Image, 0, 0, scalex, scaley);
    popMatrix();
  }
}

//--------------------------------------------------------------------------------------------------------------
public float Calculator(int i) {
  float value = GRID.composite1.get(i)*0.5
    +GRID.Riverdis_value_remap.get(i)*0.8 
    -GRID.Road_value_remap.get(i)*0.2   
    -GRID.Railway_value_remap.get(i)*0.2
    +GRID.Space_value_remap.get(i)*0.5
    +GRID.Riverquality_value_remap.get(i)*0.5; 
  return value;
}

//--------------------------------------------------------------------------------------------------------------
void Legend(float x, float y, float low, float high, float value) {
  pushStyle();
  noStroke();
  if (value>low&&value<high) {
    fill(#FFF53D);
  } else if (value<low) {
    fill(#B83E04);
  } else {
    fill(#5EB854);
  }
  ellipse(x, y, 10, 10);
  popStyle();
}
