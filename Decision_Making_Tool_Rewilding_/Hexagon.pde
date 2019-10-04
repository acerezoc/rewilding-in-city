class Points {
  float x, y, z1, z2, z3;
  float scale = 0.015;
  float extend = 8;
  int previous;
  float f, g, h;
  FloatList pathboolean;
  IntList neighbors;
  boolean wall;
  float value ;
  float value_obstacle ;
  PVector position;

  Points(float x_, float y_, float value_, float value_obstacle_) {
    x = x_;
    y = y_;
    value = value_;
    value_obstacle=value_obstacle_;
    this.f = 0;
    this.g = 0;
    this.h = 0;
    this.neighbors = new IntList();
    this.pathboolean = new FloatList();
    this.wall = false;
    this.position = new PVector(x, y);
    wall=false;
  }
  
  void display() {
    hex(x, y, 1.70, 0.1, 0);
  }
}
