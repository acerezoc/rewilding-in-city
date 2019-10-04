void hex(float x, float y, float size, float weight, float control) {
  line(size/2+x, size*sqrt(3)/2+y, size+x, y);
  line(size+x, 0+y, size/2+x, -size*sqrt(3)/2+y);
  line(size/2+x, -size*sqrt(3)/2+y, -size/2+x, -size*sqrt(3)/2+y);
  line(-size/2+x, -size*sqrt(3)/2+y, -size+x, 0+y);
  line(-size+x, 0+y, -size/2+x, size*sqrt(3)/2+y);
  line(-size/2+x, size*sqrt(3)/2+y, size/2+x, size*sqrt(3)/2+y);
}


void hex_compare(float x, float y, float size, float weight) {
  strokeWeight(weight);
  noFill();
  beginShape();
  stroke(#3C6D28);
  strokeWeight(1);
  vertex(size/2+x, size*sqrt(3)/2+y);
  vertex(size+x, y);
  vertex(size/2+x, -size*sqrt(3)/2+y);
  vertex(-size/2+x, -size*sqrt(3)/2+y);
  vertex(-size+x, 0+y);
  vertex(-size/2+x, size*sqrt(3)/2+y);
  vertex(size/2+x, size*sqrt(3)/2+y);
  endShape();
}
