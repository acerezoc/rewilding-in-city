class Single_Feature {
  //DataInput
  int id;
  float x_location;
  float y_location;
  String ward;
  String borough;
  float environmentalValue;
  float environmentalComposite;
  float riverDistance;
  float roadDistance;
  float railwayDistance;
  float spaceValue;
  float riverQuality;
  float publicBuilding;
  float educationBuilding;
  float industryBuilding;
  float residentBuilding;
  float perHousehold;
  float aged_0_15;
  float aged_16_29;
  float aged_30_44;
  float aged_45_64;
  float aged_65__2;
  float aged_Working;
  float population;
  float populationDensity;
  float presonsHectare;
  float housePrice;
  float houseSaleRate;
  float employmentRate;
  float unemployRate;
  float accessToTraffic;
  float traffic;
  float transportation;
  float childrenObesityRate;
  float incapacityRate;
  float crimeRate;
  float deliberateFires;
  float studentScore;
  float studentAbsence;
  float childrenInLow;
  float aceessToGreenSpace;
  float wellBeing;
  float lifeExpectancy;
  float pM2_5_Conc;
  float attribut_1;
  float attribut_2;
  float otterRecordYear;
  float MaintenanceCost;
  float size;
  //DataInput

  //Data_Help
  IntList neighbors;
  float Environmental_value;
  //Data_Help


  //DataInput
  Single_Feature(int id_, float x_, float y_, String ward_, String borough_, float environmentalValue_, float environmentalComposite_, float riverDistance_, float roadDistance_, 
    float railwayDistance_, float spaceValue_, float riverQuality_, float publicBuilding_, float educationBuilding_, float industryBuilding_, float residentBuilding_, float perHousehold_, 
    float aged_0_15_, float aged_16_29_, float aged_30_44_, float aged_45_64_, float aged_65__2_, float aged_Working_, float population_, float populationDensity_, 
    float presonsHectare_, float housePrice_, float houseSaleRate_, float employmentRate_, float unemployRate_, float accessToTraffic_, float traffic_, float transportation_, 
    float childrenObesityRate_, float incapacityRate_, float crimeRate_, float deliberateFires_, float studentScore_, float studentAbsence_, float childrenInLow_, float aceessToGreenSpace_, 
    float wellBeing_, float lifeExpectancy_, float pM2_5_Conc_, float attribut_1_, float attribut_2_, float otterRecordYear_, float MaintenanceCost_) {
    id=id_;
    x_location = x_;
    y_location = y_;
    ward= ward_;
    borough=borough_;
    environmentalValue=environmentalValue_;
    environmentalComposite=environmentalComposite_;
    riverDistance=riverDistance_;
    roadDistance=roadDistance_;
    railwayDistance=railwayDistance_;
    spaceValue=spaceValue_;
    riverQuality=riverQuality_;
    publicBuilding=publicBuilding_;
    educationBuilding=educationBuilding_;
    industryBuilding=industryBuilding_;
    residentBuilding=residentBuilding_;
    perHousehold=perHousehold_;
    aged_0_15=aged_0_15_;
    aged_16_29=aged_16_29_;
    aged_30_44=aged_30_44_;
    aged_45_64=aged_45_64_;
    aged_65__2=aged_65__2_;
    aged_Working=aged_Working_;
    population=population_;
    populationDensity=populationDensity_;
    presonsHectare=presonsHectare_;
    housePrice=housePrice_;
    houseSaleRate=houseSaleRate_;
    employmentRate=employmentRate_;
    unemployRate=unemployRate_;
    accessToTraffic=accessToTraffic_;
    traffic=traffic_;
    transportation=transportation_;
    childrenObesityRate=childrenObesityRate_;
    incapacityRate=incapacityRate_;
    crimeRate=crimeRate_;
    deliberateFires=deliberateFires_;
    studentScore=studentScore_;
    studentAbsence=studentAbsence_;
    childrenInLow=childrenInLow_;
    aceessToGreenSpace=aceessToGreenSpace_;
    wellBeing=wellBeing_;
    lifeExpectancy=lifeExpectancy_;
    pM2_5_Conc=pM2_5_Conc_;
    attribut_1=attribut_1_;
    attribut_2=attribut_2_;
    otterRecordYear=otterRecordYear_;
    MaintenanceCost = MaintenanceCost_;
    this.size = 10;
    this.Environmental_value = environmentalValue_*WEIGHT1+riverQuality*WEIGHT2+riverDistance*WEIGHT3+spaceValue*WEIGHT4+railwayDistance*WEIGHT5+roadDistance*WEIGHT6;
    this.neighbors = new IntList();
  }

  void display(float size) {
    HEXAGON(x_location, y_location, size);
  }
}
