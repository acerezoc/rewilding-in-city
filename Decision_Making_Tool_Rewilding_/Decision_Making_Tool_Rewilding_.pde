import controlP5.*;
import peasy.*;

ControlP5 cp5;
Accordion accordion;
GRID GRID;
otter otter;
ottersystem ottersystem;
LoadPicture LoadPicture1;
LoadPicture LoadPicture2;
LoadPicture LoadPicture3;
DATA_Visulization DATA_Visulization;

//----------------Natrual Expansion---------------------
PImage otterpicture;
ArrayList<Points> Hexagons = new ArrayList<Points>();
IntList openSet;
IntList closedSet;
IntList mouseChoice;
IntList AllSet;
IntList Check;
IntList closedSet_neightbors;
IntList neighbors;
IntList Obstacles;
int current  ;
int evolution_limit = 100;

//----------------A*star Running------------------------
int current_running;
int winner ;
int start;
int end;
IntList openSet2;
IntList closedSet2;
IntList path;
IntList neighbors2;

//----------------Mouse Control-------------------------
PVector mouse;
PVector select_point;

//----------------Button Control------------------------
boolean icon;
boolean icon2;
boolean icon3;
boolean icon4;
boolean icon5;
boolean icon6;
boolean icon7;


//----------------Control Of Zoomin out-----------------

float translateX = -450;
float translateY = -150;
float zoom = 2.7;   

//----------------Data Visualization--------------------
float Value1 = 0.0;
float Value2 = 0.0;
float Value3 = 0.0;
float Value4 = 0.0;
float Value5 = 0.0;
float Value6 = 0.0;
float Value7 = 0.0;
float Value8 = 0.0;
float Value9 = 0.0;
float Value10 = 0.0;
float Value11 = 0.0;
float Value12 = 0.0;
float Value7_ave = 0.0;
float Value8_ave = 0.0;
float Value9_ave = 0.0;
float Value10_ave = 0.0;
float Value11_ave = 0.0;
float Value12_ave = 0.0;
float control;
float select_com;
float Improve_num;
float sumnum = 0.0;
float xo = 0;
float yo = 0;
float Cost= 0;
int DAY= 0;
int select_;
IntList selects_;
IntList TablePoints;
String textValue;

//---------------Intervention Map------------------------
IntList Islands;
IntList Dredgings;
IntList Plants;
IntList Aerations;
float year = 0;

//---------------Table Save------------------------------
Table table_output;
Table HexagonsPoint;
Table SocialImpact;
//--------------------------------------------------------------------------------------------------------------
void setup() {
  HexagonsPoint = new Table();
  SocialImpact= new Table();
  HexagonsPoint.addColumn("Index", Table.INT);
    SocialImpact.addColumn("Index", Table.INT);
  openSet = new IntList();
  mouseChoice = new IntList();
  Obstacles = new IntList();
  closedSet = new IntList();
  closedSet_neightbors =  new IntList();
  neighbors = new IntList();
  AllSet = new IntList();
  openSet2 = new IntList();  
  closedSet2 = new IntList();  
  path = new IntList();  
  neighbors2 = new IntList();
  Islands= new IntList();
  Dredgings= new IntList();
  Plants= new IntList();
  Aerations= new IntList();
  selects_ = new IntList();
  TablePoints = new IntList();
  table_output = new Table();
  table_output.addColumn("id");
  table_output.addColumn("species");
  table_output.addColumn("X");
  table_output.addColumn("Y");
  DATA_Visulization = new DATA_Visulization(1, 1, 1);
  LoadPicture1 = new LoadPicture("HEXAGON4.png", 2535/3.935, 3635/3.935,255);
  LoadPicture2 = new LoadPicture("Background2.png", 7791/4, 4370/4,255);
  LoadPicture3 = new LoadPicture("HEXAGON5_riverlevel3.png", 2535/3.935, 3635/3.935,180);
  GRID = new GRID("Environment_POINT_dataREMAP(1).csv");
  for (Points P : GRID.points) {
    Hexagons.add(P);
    P.neighbors = Util.pointsInRadius(P.position, GRID.Terrain, 4.5);
  }
  for (int i = 0; i < Hexagons.size(); i++) {
    AllSet.append(i);
  }
  fullScreen(P2D);
  smooth(8);
  gui();
}

//--------------------------------------------------------------------------------------------------------------
void draw() {
  background(255);
  pushMatrix();
  translate(translateX, translateY);
  scale(zoom);

  //----------------Moving Otter------------------------
  if ( key =='a') {
    ottersystem = new ottersystem(select_);
  }
  if ( key =='s') {
    ottersystem.display();
  }

  //----------------Basic Guideline----------------------
  if (icon == true &&icon4 == !true) {
    LoadPicture1.display();
  } 
  if (icon2 == true &&icon4 == !true) {
    LoadPicture3.display();
  }
  if (icon3 == true &&icon4 == !true) {

    //--------------Threshold 1.45------------------------
    pushStyle();
    for (int i = 0; i < GRID.points.length; i ++) {
      stroke(255-80*Hexagons.get(i).value, 255-50*Hexagons.get(i).value, 255-50*Hexagons.get(i).value);
      strokeWeight(0.5);
      if (Hexagons.get(i).value>1.45) {
        GRID.points[i].display();
      }
    } 
    popStyle();

    //---------------Obstacle Areas-----------------------
    pushStyle();
    for (int i = 0; i < Hexagons.size(); i++) {
      if (Hexagons.get(i).wall & !Obstacles.hasValue(i)) {    
        Obstacles.append(i);
      }
    }

    for (int i : Obstacles) {
      IntList network = Util.network(i, Obstacles, 5, GRID.Terrain);
      noStroke();
      ellipse(Hexagons.get(i).x, Hexagons.get(i).y, 0.5, 0.5);
      for (int j : network) {
        beginShape(LINES);
        stroke(#423B1E);
        strokeWeight(0.3);
        vertex(Hexagons.get(i).x, Hexagons.get(i).y);
        vertex(Hexagons.get(j).x, Hexagons.get(j).y);
        endShape();
      }
    }
    popStyle();
  }


  //---------------Control of Natrual Expansion-------------

  if (icon4 == true) {
    if (year < evolution_limit) {
      A_star();
    }
  }

  //---------------Four Interventions------------------------
  pushStyle();
  if (Islands.size()>0) {
    for (int i : Islands) {
      noStroke();
      fill(#ef6a31);
      ellipse(Hexagons.get(i).x, Hexagons.get(i).y, 2, 2);
    }
  }
  popStyle();
  pushStyle();
  if (Dredgings.size()>0) {
    for (int i : Dredgings) {
      noStroke();
      fill(#f29b53);
      ellipse(Hexagons.get(i).x, Hexagons.get(i).y, 2, 2);
    }
  }
  popStyle();
  pushStyle();
  if (Plants.size()>0) {
    for (int i : Plants) {
      noStroke();
      fill(#ef4d32);
      ellipse(Hexagons.get(i).x, Hexagons.get(i).y, 2, 2);
    }
  }
  popStyle();

  pushStyle();
  if (Aerations.size()>0) {
    for (int i : Aerations) {
      noStroke();
      fill(#f9ceaa);
      ellipse(Hexagons.get(i).x, Hexagons.get(i).y, 2, 2);
    }
  }
  popStyle();

  //---------------The Statistic Display---------------------
  pushStyle();
  if (icon7==true) {
    int v7 = 0;
    int v8 = 0;
    int v9 = 0;
    int v10 = 0;
    int v11 = 0;
    int v12 = 0;
    for (int i : closedSet_neightbors) {
      stroke(#f18939);
      strokeWeight(0.3);
      GRID.points[i].display();
      v7 += GRID.SUM_public.get(i);
      v8 += GRID.SUM_educat.get(i);
      v9 += GRID.SUM_Changi.get(i);
      v10 += GRID.SUM_reside.get(i);
      v11 += GRID.House_Pric.get(i);
      v12 += GRID.Household.get(i);
      Value7_ave = v7;
      Value8_ave = v8;
      Value9_ave = v9;
      Value10_ave = v10;
      Value11_ave = v11/closedSet.size();
      Value12_ave = v12/closedSet.size();
    }
  }

  popStyle();


  //----------------The Network Display----------------------
  if (icon4 == true) {
    pushStyle();
    Check = closedSet.copy();
    for (int i : closedSet) {
      stroke(105, 155, 155);
      if (Hexagons.get(i).value<1.45) {
        removeFromArraySingle(Check, i);
      }
    }
    for (int i : Check) {
      IntList network = Util.network(i, Check, 5, GRID.Terrain);
      for (int j : network) {
        beginShape(LINES);
        strokeWeight(0.5);
        vertex(Hexagons.get(i).x, Hexagons.get(i).y);
        vertex(Hexagons.get(j).x, Hexagons.get(j).y);
        endShape();
      }
    }
    popStyle();
  }
  pushStyle();
  strokeWeight(0.5);
  stroke(#B41301);
  hex(xo, yo, 1.70, 0.2, 0);
  point((mouseX-translateX)/zoom, (mouseY-translateY)/zoom); 
  stroke(#C73D3D);
  popStyle();

  //-----------------A*star Running Display------------------
  if (icon3 == true) {
    A_starrunning();
  }
  if (path.size()>0) {
    noFill();
    beginShape();
    stroke(100, 149, 237);
    strokeWeight(1);
    for (int i : path) {
      vertex(GRID.points[i].x, GRID.points[i].y);
    }
    endShape();
  }

  if (start >=0 && end>=0) {
    pushStyle();
    stroke(0, 255, 0);
    GRID.points[start].display(); 
    GRID.points[end].display(); 
    popStyle();
  }
  popMatrix();



  //-----------------Interface Picture Display----------------
  pushMatrix();
  scale(1);
  translate(-265, 75);
  LoadPicture2.display();
  popMatrix();
  DATA_Visulization.display();
  textValue = cp5.get(Textfield.class, "textValue").getText();
  evolution_limit = int (textValue);
}
