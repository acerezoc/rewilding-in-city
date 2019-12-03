void keyPressed() {
  if ( key == ' ') {
    zoom = 1;
    translateX =300;
    translateY =200;
  }
}

void mouseDragged(MouseEvent event) {
  if ( !cp5.isMouseOver()) {
    translateX += mouseX - pmouseX;
    translateY += mouseY - pmouseY;
  }
}

void mouseWheel(MouseEvent event) {
  translateX -= mouseX;
  translateY -= mouseY;
  float delta = event.getCount() < 0 ? 1.05 : event.getCount() > 0 ? 1.0/1.05 : 1.0;
  zoom *= delta;
  translateX *= delta;
  translateY *= delta;
  translateX += mouseX;
  translateY += mouseY;
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    mouse = new PVector((mouseX-translateX)/zoom, (mouseY-translateY)/zoom, 0);
    int select = Util.closestPoint(mouse, DATA_INPUT.X_Coordinate, DATA_INPUT.Y_Coordinate, 10000);
    select_ = select;
  }
}
