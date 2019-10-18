
void keyPressed() {
  if ( key == ' ') {
    zoom = 2.7;
    translateX =-450;
    translateY =-150;
  }

  //---------------Tbale Saving--------------------------
  if ( key == 'z') {
    for (int i : closedSet) {
      TableRow row =HexagonsPoint.addRow();
      row.setInt("Index", i);
    }
    for(int i :closedSet_neightbors){
      TableRow row1 =SocialImpact.addRow();
      row1.setInt("Index", i);
    }
 saveTable(SocialImpact, "data/outputTable2.csv");
    saveTable(HexagonsPoint, "data/outputTable.csv");
  }
}

//--------------------------------------------------------------------------------------------------------------
void mouseDragged(MouseEvent event) {
  if ( !cp5.isMouseOver()) {
    translateX += mouseX - pmouseX;
    translateY += mouseY - pmouseY;
  }
}

//--------------------------------------------------------------------------------------------------------------
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

//--------------------------------------------------------------------------------------------------------------
void mousePressed() {
  select_com =Hexagons.get(select_).value;
  mouse = new PVector((mouseX-translateX)/zoom, (mouseY-translateY)/zoom, 0);
  int select = Util.closestPoint(mouse, GRID.Terrain, 10000);
  IntList selects = Util.pointsInRadius(mouse, GRID.Terrain, 20);
  if (mouseButton == RIGHT && !cp5.isMouseOver()) {  
    Value1 = GRID.composite1.get(select);
    Value2 = GRID.Riverdis_value_remap.get(select);
    Value3 = GRID.Road_value_remap.get(select);
    Value4 = GRID.Railway_value_remap.get(select);
    Value5 = GRID.Space_value_remap.get(select);
    Value6 = GRID.Riverquality_value_remap.get(select);
    Value7 = GRID.SUM_public.get(select);
    Value8 = GRID.SUM_educat.get(select);
    Value9 = GRID.SUM_Changi.get(select);
    Value10 = GRID.SUM_reside.get(select);  
    Value11 = GRID.House_Pric.get(select);
    Value12 = GRID.Househol_1.get(select);
    select_= select;
    selects_ = selects;
    xo = GRID.Terrain[select_].x;
    yo = GRID.Terrain[select_].y;
  }
  if (mouseButton == LEFT && !cp5.isMouseOver()  &&icon5 ) { 
    Hexagons.get(select).wall = true;
  }
  if ( mouseButton == LEFT && key == '1') {
    start = select;
    openSet2.append(start);
    if (openSet2.size() >1) {
      openSet2.remove(0);
    }
  }
  if (  mouseButton == LEFT && key == '2') {
    end = select;
  }
  if (  key == '3') {
    path.clear();
    closedSet2.clear();
    openSet2.clear();
    neighbors2.clear();
    //start = end = -1;
  }
}
