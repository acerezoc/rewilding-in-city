void HEXAGON(float x, float y, float size) {
  beginShape();
  vertex(size/2+x, size*sqrt(3)/2+y);
  vertex( size+x, y);
  vertex(size/2+x, -size*sqrt(3)/2+y);
  vertex(-size/2+x, -size*sqrt(3)/2+y);
  vertex(-size+x, 0+y);
  vertex(-size/2+x, size*sqrt(3)/2+y);
  endShape(CLOSE);
}
