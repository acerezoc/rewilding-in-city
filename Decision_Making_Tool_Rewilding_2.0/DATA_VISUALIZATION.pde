class DATA_Visulization {

  DATA_Visulization() {
  }


  void easydispaly() {
    fill(#6491aa);
    noStroke();
    textSize(15);
    text("COST(Million):£ " + TOTALCOST/1000000, 1520, 170);
    text("MONEY SAVE(Million):£" + MONEYSAVE/1000000, 1520, 190);
    text("PROPERTY VALUE(Million):£"+ PROPERTYVALUE/1000000, 1520, 210);
    text("LIFE EXTENSION(Year): " + LIFEEXPECTANCYEXTEND, 1520, 230);
    text("ENVIRONMENTAL VALUE(improved): " +ENVIRONMENTALSUM, 1520, 250);
    if (balance<0) {
      fill(#f2954b);
    }
    rect(1500, 155, 10, 55);
  }


  void display() {

    //USER INTERFACE
    if (RESULT_DISPLAY==true) {  
      pushStyle();
      //RESULT CANVAS
      fill(#ebe9ea);
      noStroke();
      rect(1500, 140, 400, 900);
      fill(#6491aa);
      rect(1500, 140, 400, 40);
      textFont(font);
      fill(250);
      textSize(25);
      text("Detail Report:", 1520, 170);
      textSize(13);
      fill(#6491aa);
      text("Environmental Area(ha):"+ AREA, 1520, 210);
      text("Access To Green Space :"+ ACCESSTOGREENSPCAE/Social_Impact.size(), 1520, 230);
      text("Preson Green Space(ha):"+ PresonsHectare_ave/Social_Impact.size(), 1520, 250);
      text("Otter Rate :"+ otterrate, 1520, 270);  

      text("Social Area(ha) :"+ Social_Impact.size(), 1520, 310);
      text("Population :"+ POPULATION, 1520, 330);
      text("Population Density :"+ PopulationDensitys_ave/Social_Impact.size(), 1520, 350);
      text("Life Expectancy :"+ LIFEEXPECTANCY/Social_Impact.size(), 1520, 370);
      text("Well Being :"+ wellbeing_ave/Social_Impact.size(), 1520, 390);
      text("Working Age People :"+ Aged_Workings_ave, 1520, 410);
      text("Employment Rate :"+ EmploymentRate_ave/Social_Impact.size(), 1520, 430);
      text("Unemploy Rate :"+ UnemployRate_ave/Social_Impact.size(), 1520, 450);
      text("Children Obsesity Rate :"+ ChildrenObesityRate_ave/Social_Impact.size(), 1520, 470);
      text("Student Score :"+ StudentScore_ave/Social_Impact.size(), 1520, 490);
      text("Student Absences :"+ StudentAbsences_ave, 1520, 510);

      text("Cimre Rate :"+ CrimeRate_ave, 1520, 530);
      text("HouseHold Number:"+ HOUSEHOLD, 1520, 550);
      text("House Price :£"+ HOUSEPRICE/Social_Impact.size(), 1520, 570);
      text("House Sale Rate :"+ HouseSaleRate_ave/Social_Impact.size(), 1520, 590);

      text("Public Building(m2) :"+ PUBLIC_BUILDING, 1520, 610);
      text("Education Building(m2) :"+ EDUCATION_BUILDING, 1520, 630);
      text("Residental Building(m2) :"+ RESIDENT_BUILDING, 1520, 650);
      text("Industrial Building(m2) :"+ INDSUTRY_BUILDING, 1520, 670);

      text("Transportations:"+ Transportations_ave, 1520, 690);
      text("Incapacity Rates :"+ IncapacityRates_ave/Social_Impact.size(), 1520, 710);
      text("Deliberate Firess :"+ DeliberateFiress_ave, 1520, 730);


      fill(#f2954b);
      text("Property Value Increase Rate: 0.1% - 0.5%", 1520, 770);
      text("Per Person Life Extention :  0.7 year", 1520, 790);
      text("Per Person Physical Value : £0.8 / year", 1520, 810);
      text("Pre Otter Cost :£4057 / year ", 1520, 830);
      text("Pre Otter Economic Benefits :£22,560 / year ", 1520, 850);
      text("Pre Otter Jobs Increment : 0.5-2.7 jobs", 1520, 870);
      text("Formula :", 1520, 910);
      text("Total Cost = Maintain Cost + Intervention Cost"+ CAPTIAL_COST, 1520, 930);
      text("Life Extension = 0.7 * Population"+ CAPTIAL_COST, 1520, 950);
      text("Money Saving = 0.8 * Population"+ CAPTIAL_COST, 1520, 970);
      text("Property Value = Population * Per Household * House Price * 0.1%", 1520, 990);
      text("Environmenta Value Increment = Improved Value - Previous Value", 1520, 1010);
      popStyle();

      //rect(1500, 330, 400, 40);
      //rect(1500, 640, 400, 40);

      //text("ENVIRONMENT :", 1520, 360);
      //text("SOCIETY :", 1520, 670);
      ////RESULT_TXT
      //fill(#6491aa);
      //textSize(15);
      //text("CAPTIAL COST :"+ CAPTIAL_COST, 1520, 210);
      //rect(1520, 220, CAPTIAL_COST, 10);
      //text("MAINTENANCE :"+MAINTENCE, 1520, 250);
      //rect(1520, 260, MAINTENCE/10, 10);
      //text("TIMESCALE(year) :"+TIMESCALE, 1520, 290);
      //rect(1520, 300, TIMESCALE, 10);
      //text("AREA(ha) :"+AREA, 1520, 400);
      //rect(1520, 410, AREA/10, 10);
      //text("ENVIRONMENTAL VALUE :"+ENVIRONMENTAL_VALUE, 1520, 440);
      //rect(1520, 450, ENVIRONMENTAL_VALUE/10, 10);

      //textSize(12);
      //text("-environmentalComposite :"+NAME1, 1520, 480);
      //rect(1525, 485, NAME1/5, 5);
      //text("-riverQuality :"+NAME2, 1520, 500);
      //rect(1525, 505, NAME2/5, 5);
      //text("-riverDistance(m) :"+NAME3, 1520, 520);
      //rect(1525, 525, NAME3/5, 5);
      //text("-spaceValue :"+NAME4, 1520, 540);
      //rect(1525, 545, NAME4/5, 5);
      //text("-railwayDistance(m) :"+NAME5, 1520, 560);
      //rect(1525, 565, NAME5/5, 5);
      //text("-roadDistance(m) :"+NAME6, 1520, 580);
      //rect(1525, 585, NAME6/5, 5);
      //text("-pM2.5 :"+NEWLAYER1, 1520, 600);
      //rect(1525, 605, NEWLAYER1/50, 5);
      //text("-traffic :"+NEWLAYER2, 1520, 620);
      //rect(1525, 625, NEWLAYER2/50, 5);

      //textSize(15);
      //text("PUBLIC BUILDING(m2) :"+PUBLIC_BUILDING, 1520, 710);
      //rect(1520, 720, PUBLIC_BUILDING/5000, 10);
      //text("EDUCATION BUILDING(m2) :"+EDUCATION_BUILDING, 1520, 750);
      //rect(1520, 760, EDUCATION_BUILDING/5000, 10);
      //text("RESIDENT BUILDING(m2) :"+RESIDENT_BUILDING, 1520, 790);
      //rect(1520, 800, RESIDENT_BUILDING/5000, 10);
      //text("INDSUTRY BUILDING(m2) :"+INDSUTRY_BUILDING, 1520, 830);
      //rect(1520, 840, INDSUTRY_BUILDING/5000, 10);
      //text("POPULATION :"+POPULATION, 1520, 870);
      //rect(1520, 880, POPULATION/1000, 10);
      //text("HOUSEPRICE(£) :"+HOUSEPRICE/AREA, 1520, 910);
      //rect(1520, 920, HOUSEPRICE/(AREA*10000), 10);
      //text("ACCESSTOGREENSPCAE :"+ACCESSTOGREENSPCAE/AREA, 1520, 950);
      //rect(1520, 960, ACCESSTOGREENSPCAE/AREA*10, 10);
      //text("LIFEEXPECTANCY(year) :"+LIFEEXPECTANCY/AREA, 1520, 990);
      //rect(1520, 1000, LIFEEXPECTANCY/AREA, 10);
    }
    //USER INTERFACE
  }
}
