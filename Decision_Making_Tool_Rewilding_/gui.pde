void gui() {
  cp5 = new ControlP5(this); 

  cp5.addIcon("icon", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(40, 80+60)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addIcon("icon2", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(40, 120+60)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addIcon("icon3", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(40, 160+60)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addIcon("icon4", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, 80+60)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addIcon("icon5", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, 120+60)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addIcon("icon6", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, 160+60)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addIcon("icon7", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(40, height-250)
    .setSize(70, 50)
    .setRoundedCorners(20)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setColorBackground(color(255, 100))
    .hideBackground()
    ;

  cp5.addTextfield("textValue")
    .setColorBackground(color(105, 155, 155))
    .setColorForeground(color(105, 155, 155))
    .setPosition(250, height-120)
    .setSize(95, 40)
    .setFont(createFont("arial", 20))
    .setAutoClear(false)
    ;

  cp5.addBang("clear")
    .setColorForeground(color(105, 155, 155))
    .setPosition(100, height-120)
    .setSize(60, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;  

  cp5.addBang("New")
    .setColorForeground(color(105, 155, 155))
    .setPosition(170, height-120)
    .setSize(60, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ; 

  cp5.addBang("Plant")
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, height-300)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("Island")
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, height-330)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;

  cp5.addBang("Dredging")
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, height-360)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;
  cp5.addBang("Aeration")
    .setColorForeground(color(105, 155, 155))
    .setPosition(width-150, height-390)
    .setSize(80, 40)
    .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
    ;
}

//--------------------------------------------------------------------------------------------------------------
public void New() {
  mouseChoice.clear();
}

//--------------------------------------------------------------------------------------------------------------
public void clear() {

  for (Points P : GRID.points) {
    P.wall=false;
  }

  for (int i = 0; i < Hexagons.size(); i++) {
    Hexagons.get(i).value = Calculator(i);
  }

  HexagonsPoint.clearRows();//Clean the Table
  Obstacles.clear();
  closedSet.clear();
  openSet.clear();
  neighbors.clear();
  Islands.clear();
  Dredgings.clear();
  Plants.clear();
  Aerations.clear();
  closedSet_neightbors.clear();
  Check.clear();
  selects_.clear();
  TablePoints.clear();
  Cost= 0;
  Value7_ave = 0.0;
  Value8_ave = 0.0;
  Value9_ave = 0.0;
  Value10_ave = 0.0;
  Value11_ave = 0.0;
  Value12_ave = 0.0;
  year = 0;
}

//----------------Intervention Button------------------------
public void Island() {
  Hexagons.get(select_).value += 1.5;
  DAY  += 90;
  Cost  +=1.95;
  Islands.append(select_);
  openSet.append(select_);
}

public void Dredging() {
  Hexagons.get(select_).value+= 1.0;
  DAY  += 65;
  Cost  += 10;
  Dredgings.append(select_);
  openSet.append(select_);
}

public void Plant() {
  Hexagons.get(select_).value += 2.0;
  DAY  += 300;
  Cost += 20;
  Plants.append(select_);
  openSet.append(select_);
}

public void Aeration() {
  Hexagons.get(select_).value += 0.5;
  DAY  += 70;
  Cost  += 1;
  Aerations.append(select_);
  openSet.append(select_);
}
