//USER INTERFACE
import controlP5.*;
ControlP5 cp5;
LoadPicture Interface;
Accordion accordion;
Textlabel myTextlabelA;
Textarea myTextarea;
String Front;
boolean RESULT_DISPLAY;
PFont font;
DATA_Visulization DATA_Visulization;
//USER INTERFACE

//Color Code
color low = color(195, 215, 215);
color high= color(10, 70, 70);
color color_value;
//Color Code

//Mouse Control
PVector mouse;
int select_;
//Mouse Control

//DATA_INPUT
DATA_INPUT DATA_INPUT;
//DATA_INPUT

//INTERVENTION
int INTERVENTION1_num=-1;
int INTERVENTION2_num=-1;
int INTERVENTION3_num=-1;
int INTERVENTION4_num=-1;
IntList INTERVENTION1_group = new IntList();
IntList INTERVENTION2_group = new IntList();
IntList INTERVENTION3_group = new IntList();
IntList INTERVENTION4_group = new IntList();
//INTERVENTION

//NATURAL_EXPANSION
int current;
IntList Natrual_Improving = new IntList();
IntList Natrual_Improved = new IntList();
boolean NATURAL_CALCULATOR;
float TIMELINE;
float IMPACT_DEGREE;
float year = 0 ;
//NATURAL_EXPANSION

//SOCIAL_IMPACT
IntList Social_Impact = new IntList();
boolean SOCIAL_CALCULATOR;
float SOCIAL_RADIUS;
//SOCIAL_EXPANSION

//BASIC_MAP
boolean BASE_MAP_ICON;
boolean ENVIRONMENT_MAP_ICON;
boolean SOCIETY_MAP_ICON;
boolean ADD_NEW_MAP1_ICON;
boolean ADD_NEW_MAP2_ICON;
float Transparent;
LoadPicture BASE_MAP;
LoadPicture ENVIRONMENTAL_MAP;
LoadPicture SOCIAL_MAP;
LoadPicture ADD_NEW_MAP1;
LoadPicture ADD_NEW_MAP2;
//BASIC_MAP

//ENVIRONMENTAL WEIGHT
float WEIGHT1;
float WEIGHT2;
float WEIGHT3;
float WEIGHT4;
float WEIGHT5;
float WEIGHT6;
float UNKNOWN1;
float UNKNOWN2;
//ENVIRONMENTAL WEIGHT

//POTENTIAL_CORRIDOR
boolean SUITABILITYMAP;
float THRESHOLD_;
//POTENTIAL_CORRIDOR

//TRANSLATE
float translateX = 300;
float translateY = 200;
float zoom = 1;   
//TRANSLATE

//RESULT
float CAPTIAL_COST;
float MAINTENCE;
float TIMESCALE;
float AREA;
float ENVIRONMENTAL_VALUE;
float NAME1;
float NAME2;
float NAME3;
float NAME4;
float NAME5;
float NAME6;
float NEWLAYER1;
float NEWLAYER2;
float PUBLIC_BUILDING;
float EDUCATION_BUILDING;
float RESIDENT_BUILDING;
float INDSUTRY_BUILDING;
float POPULATION;
float HOUSEPRICE;
float ACCESSTOGREENSPCAE;
float LIFEEXPECTANCY;
float HOUSEHOLD;
float PresonsHectare_ave;
float HouseSaleRate_ave;
float EmploymentRate_ave;
float ChildrenObesityRate_ave;
float CrimeRate_ave;
float StudentScore_ave;
float UnemployRate_ave;
float otterrate;
float wellbeing_ave;
float Aged_Workings_ave;
float PopulationDensitys_ave;
float Transportations_ave;
float IncapacityRates_ave;
float DeliberateFiress_ave;
float StudentAbsences_ave;
float balance;



//RESULT

//RESULT2
float TOTALCOST = 0;
float MAINTENACECOST = 0;
float LIFEEXPECTANCYEXTEND=0;
float MONEYSAVE=0;
float PROPERTYVALUE=0;
float ENVIRONMENTALSUM=0;

//RESULT2
void setup() {

  //DATA_INPUT
  DATA_INPUT = new DATA_INPUT("DATA_INPUT1.csv");
  for (Single_Feature i : DATA_INPUT.Single_Features) {
    i.neighbors = Util.pointsInRadius(i.x_location, i.y_location, DATA_INPUT.X_Coordinate, DATA_INPUT.Y_Coordinate, 4.5);
    i.Environmental_value = Calculator(i.id);
  }
  //DATA_INPUT

  //BASIC_MAP
  BASE_MAP = new LoadPicture("BASE_MAP.png", 2535/3.935, 3635/3.935, 255);
  ENVIRONMENTAL_MAP = new LoadPicture("ENVIRONMENTAL_MAP.png", 2535/3.935, 3635/3.935, 255);
  SOCIAL_MAP = new LoadPicture("SOCIAL_MAP.png", 2535/3.935, 3635/3.935, 255);
  ADD_NEW_MAP1 = new LoadPicture("ADD_NEW_MAP1.png", 2535/3.935, 3635/3.935, 255);
  ADD_NEW_MAP2 = new LoadPicture("ADD_NEW_MAP2.png", 2535/3.935, 3635/3.935, 255);
  //BASIC_MAP

  //USER INTERFACE
  font = createFont("Franklin Gothic Book", 60);
  DATA_Visulization = new DATA_Visulization();
  Front="Franklin Gothic Book";
  Interface = new LoadPicture("INTERFACE.png", 7791/4, 4370/4, 255);
  fullScreen(P2D);
  smooth(8);
  GUI();
  //USER INTERFACE
}

void draw() {
  background(255);

  //DATA_VISULIZATION
  pushMatrix();
  translate(translateX, translateY);
  scale(zoom);

  //BASIC_MAP
  pushStyle();
  tint(255, Transparent);
  if (BASE_MAP_ICON == true ) {

    BASE_MAP.display();
  } 
  if (ENVIRONMENT_MAP_ICON == true ) {
    ENVIRONMENTAL_MAP.display();
  } 
  if (SOCIETY_MAP_ICON == true ) {
    SOCIAL_MAP.display();
  } 
  if (ADD_NEW_MAP1_ICON == true ) {
    ADD_NEW_MAP1.display();
  } 
  if (ADD_NEW_MAP2_ICON == true ) {
    ADD_NEW_MAP2.display();
  } 
  popStyle();
  //BASIC_MAP

  //DATA SHAPE
  if (SUITABILITYMAP == true && NATURAL_CALCULATOR==false) {
    for (Single_Feature i : DATA_INPUT.Single_Features ) {
      if (i.Environmental_value>THRESHOLD_) {
        pushMatrix();
        color_value =  lerpColor(low, high, map(i.Environmental_value, 0, 5, 0, 1));
        fill(color_value);
        noStroke();
        i.display(i.Environmental_value);
        popMatrix();
      }
    }
  }
  //DATA SHAPE

  //NATURAL_EXPANSION
  if (NATURAL_CALCULATOR == true) {
    Natural_Expansion();
    Social_Impact();
    for (int i : Natrual_Improved) {
      pushMatrix();
      fill(#48763b, (DATA_INPUT.Single_Features[i].Environmental_value-THRESHOLD_)*130);
      noStroke();
      DATA_INPUT.Single_Features[i].display(DATA_INPUT.Single_Features[i].Environmental_value);
      popMatrix();
    }
  }
  //NATURAL_EXPANSION

  //SOICAL_IMPACT

  if (SOCIAL_CALCULATOR == true) {
    for (int i : Social_Impact) {
      pushMatrix();
      pushStyle();
      stroke(100);
      strokeWeight(0.2);
      noFill();
      DATA_INPUT.Single_Features[i].display(1);
      popStyle();
      popMatrix();
    }
  }
  //SOICAL_IMPACT


  //SELECT
  pushStyle();
  stroke(0);
  strokeWeight(0.5);
  fill(#f3954c);
  DATA_INPUT.Single_Features[select_].display(1.7);
  popStyle();
  //SELECT 
  //INTERVENTION
  for (int i : INTERVENTION1_group) {
    pushStyle();
    fill(#f9ceaa);
    noStroke();
    DATA_INPUT.Single_Features[i].display(1.7);
    popStyle();
  }
  for (int i : INTERVENTION2_group) {
    pushStyle();
    fill(#f29b53);
    noStroke();
    DATA_INPUT.Single_Features[i].display(1.7);
    popStyle();
  }
  for (int i : INTERVENTION3_group) {
    pushStyle();
    fill(#ef6a31);
    noStroke();
    DATA_INPUT.Single_Features[i].display(1.7);
    popStyle();
  }
  for (int i : INTERVENTION4_group) {
    pushStyle();
    fill(#ef4d32);
    noStroke();
    DATA_INPUT.Single_Features[i].display(1.7);
    popStyle();
  }
  //INTERVENTION


  popMatrix();
  //DATA_VISULIZATION



  //RESULT
  if (year<TIMELINE) {
    TIMESCALE = year;
    AREA = Natrual_Improved.size();
    ENVIRONMENTAL_VALUE = 0;
    NAME1 = 0;
    NAME2 = 0;
    NAME3 = 0;
    NAME4 = 0;
    NAME5 = 0;
    NAME6 = 0;
    NEWLAYER1 = 0;
    NEWLAYER2 = 0;
    PUBLIC_BUILDING = 0;
    EDUCATION_BUILDING = 0;
    RESIDENT_BUILDING = 0;
    INDSUTRY_BUILDING = 0;
    POPULATION = 0;
    HOUSEPRICE = 0;
    HOUSEHOLD=0;
    ACCESSTOGREENSPCAE = 0;
    LIFEEXPECTANCY = 0;
    PROPERTYVALUE = 0;
    ENVIRONMENTALSUM = 0;
    wellbeing_ave = 0;
    for (int i : Natrual_Improved) {
      ENVIRONMENTAL_VALUE += DATA_INPUT.Single_Features[i].Environmental_value;
      NAME1 += DATA_INPUT.Single_Features[i].environmentalComposite;
      NAME2 += DATA_INPUT.Single_Features[i].riverQuality;
      NAME3 += DATA_INPUT.Single_Features[i].riverDistance;
      NAME4 += DATA_INPUT.Single_Features[i].spaceValue;
      NAME5 += DATA_INPUT.Single_Features[i].railwayDistance;
      NAME6 += DATA_INPUT.Single_Features[i].roadDistance;
      NEWLAYER1 += DATA_INPUT.Single_Features[i].pM2_5_Conc;
      NEWLAYER2 += DATA_INPUT.Single_Features[i].traffic;
      MAINTENACECOST += DATA_INPUT.Single_Features[i].MaintenanceCost;
      ENVIRONMENTALSUM += DATA_INPUT.Single_Features[i].Environmental_value - Calculator(i);
      otterrate+= (DATA_INPUT.Single_Features[i].otterRecordYear - 2000)/20;
    }
    for (int i : Social_Impact) {
      PUBLIC_BUILDING += DATA_INPUT.Single_Features[i].publicBuilding;
      EDUCATION_BUILDING += DATA_INPUT.Single_Features[i].educationBuilding;
      RESIDENT_BUILDING += DATA_INPUT.Single_Features[i].residentBuilding;
      INDSUTRY_BUILDING += DATA_INPUT.Single_Features[i].industryBuilding;
      POPULATION += DATA_INPUT.Single_Features[i].population;
      HOUSEPRICE += DATA_INPUT.Single_Features[i].housePrice;
      ACCESSTOGREENSPCAE += DATA_INPUT.Single_Features[i].aceessToGreenSpace;
      LIFEEXPECTANCY += DATA_INPUT.Single_Features[i].lifeExpectancy;
      HOUSEHOLD += DATA_INPUT.Single_Features[i].perHousehold;
      PresonsHectare_ave += DATA_INPUT.Single_Features[i].presonsHectare;
      HouseSaleRate_ave += DATA_INPUT.Single_Features[i].houseSaleRate;
      EmploymentRate_ave += DATA_INPUT.Single_Features[i].employmentRate;
      UnemployRate_ave += DATA_INPUT.Single_Features[i].unemployRate;
      ChildrenObesityRate_ave += DATA_INPUT.Single_Features[i].childrenObesityRate;
      CrimeRate_ave += DATA_INPUT.Single_Features[i].crimeRate;
      StudentScore_ave+= DATA_INPUT.Single_Features[i].studentScore;
      wellbeing_ave += DATA_INPUT.Single_Features[i].wellBeing;
      Aged_Workings_ave += DATA_INPUT.Single_Features[i].aged_Working;
      PopulationDensitys_ave += DATA_INPUT.Single_Features[i].populationDensity;
      Transportations_ave +=  DATA_INPUT.Single_Features[i].transportation;
      IncapacityRates_ave +=DATA_INPUT.Single_Features[i].incapacityRate;
      DeliberateFiress_ave +=DATA_INPUT.Single_Features[i].deliberateFires;
      StudentAbsences_ave+=DATA_INPUT.Single_Features[i].studentAbsence;
    }
    TOTALCOST = MAINTENACECOST + CAPTIAL_COST*10000;
    LIFEEXPECTANCYEXTEND = 0.7*POPULATION*(LIFEEXPECTANCY/Social_Impact.size())/80;
    MONEYSAVE = POPULATION*0.8;  
    PROPERTYVALUE = 0.0001*HOUSEHOLD*POPULATION*HOUSEPRICE/Social_Impact.size();
    balance = PROPERTYVALUE-TOTALCOST-MONEYSAVE;
  }


  //RESULT

  //USER INTERFACE
  pushMatrix();
  scale(1);
  translate(-265, 75);
  Interface.display();
  popMatrix();
  DATA_Visulization.easydispaly();
  DATA_Visulization.display();

  //USER INTERFACE
}
