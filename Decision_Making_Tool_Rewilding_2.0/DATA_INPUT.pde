class DATA_INPUT {
  Table table;
  int t_len;
  IntList Unique_ID;
  FloatList X_Coordinate;
  FloatList Y_Coordinate;
  StringList Ward;
  StringList Borough;
  FloatList EnvironmentalValue;
  FloatList EnvironmentalComposite;
  FloatList RiverDistance;
  FloatList RoadDistance;
  FloatList RailwayDistance;
  FloatList SpaceValue;
  FloatList RiverQuality;
  FloatList PublicBuilding;
  FloatList EducationBuilding;
  FloatList IndustryBuilding;
  FloatList ResidentBuilding;
  FloatList PerHousehold;
  FloatList Aged_0_15;
  FloatList Aged_16_29;
  FloatList Aged_30_44;
  FloatList Aged_45_64;
  FloatList Aged_65__2;
  FloatList Aged_Working;
  FloatList Population;
  FloatList PopulationDensity;
  FloatList PresonsHectare;
  FloatList HousePrice;
  FloatList HouseSaleRate;
  FloatList EmploymentRate;
  FloatList UnemployRate;
  FloatList AccessToTraffic;
  FloatList Traffic;
  FloatList Transportation;
  FloatList ChildrenObesityRate;
  FloatList IncapacityRate;
  FloatList CrimeRate;
  FloatList DeliberateFires;
  FloatList StudentScore;
  FloatList StudentAbsence;
  FloatList ChildrenInLow;
  FloatList AceessToGreenSpace;
  FloatList WellBeing;
  FloatList LifeExpectancy;
  FloatList PM2_5_Conc;
  FloatList Attribut_1;
  FloatList Attribut_2;
  FloatList OtterRecordYear;
  FloatList MaintenanceCost;

  Single_Feature[] Single_Features;

  DATA_INPUT(String csv_path) {
    initialise_terrain(csv_path);
  }

  void initialise_terrain(String csv_path) {
    table = loadTable(csv_path, "header");
    t_len = table.getRowCount();
    Unique_ID = new IntList();
    X_Coordinate = new FloatList();
    Y_Coordinate = new FloatList();
    Ward = new StringList();
    Borough = new StringList();
    EnvironmentalValue = new FloatList();
    EnvironmentalComposite = new FloatList();
    RiverDistance = new FloatList();
    RoadDistance = new FloatList();
    RailwayDistance = new FloatList();
    SpaceValue = new FloatList();
    RiverQuality = new FloatList();
    PublicBuilding = new FloatList();
    EducationBuilding = new FloatList();
    IndustryBuilding = new FloatList();
    ResidentBuilding = new FloatList();
    PerHousehold = new FloatList();
    Aged_0_15 = new FloatList();
    Aged_16_29 = new FloatList();
    Aged_30_44 = new FloatList();
    Aged_45_64 = new FloatList();
    Aged_65__2 = new FloatList();
    Aged_Working = new FloatList();
    Population = new FloatList();
    PopulationDensity = new FloatList();
    PresonsHectare = new FloatList();
    HousePrice = new FloatList();
    HouseSaleRate = new FloatList();
    EmploymentRate = new FloatList();
    UnemployRate = new FloatList();
    AccessToTraffic = new FloatList();
    Traffic = new FloatList();
    Transportation = new FloatList();
    ChildrenObesityRate = new FloatList();
    IncapacityRate = new FloatList();
    CrimeRate = new FloatList();
    DeliberateFires = new FloatList();
    StudentScore = new FloatList();
    StudentAbsence = new FloatList();
    ChildrenInLow = new FloatList();
    AceessToGreenSpace = new FloatList();
    WellBeing = new FloatList();
    LifeExpectancy = new FloatList();
    PM2_5_Conc = new FloatList();
    Attribut_1 = new FloatList();
    Attribut_2 = new FloatList();
    OtterRecordYear = new FloatList();
    MaintenanceCost = new FloatList();

    for (TableRow row : table.rows()) {
      int id = row.getInt("Unique_ID");
      float x = row.getFloat("X");
      float y = row.getFloat("Y");
      float x_project=(x-500000)*0.033050 -623;
      float y_project=800-(y-170000)*0.03299+184;
      String Wards = row.getString("NAME");
      String Boroughs = row.getString("DISTRICT");
      float EnvironmentalValues = row.getFloat("EnvironmentalValue");
      float EnvironmentalComposites = row.getFloat("EnvironmentalComposite");
      float RiverDistances = row.getFloat("RiverDistance");
      float RoadDistances = row.getFloat("RoadDistance");
      float RailwayDistances = row.getFloat("RailwayDistance");
      float SpaceValues = row.getFloat("SpaceValue");
      float RiverQualitys = row.getFloat("RiverQuality");
      float PublicBuildings = row.getFloat("PublicBuilding");
      float EducationBuildings = row.getFloat("EducationBuilding");
      float IndustryBuildings = row.getFloat("IndustryBuilding");
      float ResidentBuildings = row.getFloat("ResidentBuilding");
      float PerHouseholds = row.getFloat("PerHousehold");
      float Aged_0_15s = row.getFloat("Aged_0_15");
      float Aged_16_29s = row.getFloat("Aged_16_29");
      float Aged_30_44s = row.getFloat("Aged_30_44");
      float Aged_45_64s = row.getFloat("Aged_45_64");
      float Aged_65__2s = row.getFloat("Aged_65__2");
      float Aged_Workings = row.getFloat("Aged_Working");
      float Populations = row.getFloat("Population");
      float PopulationDensitys = row.getFloat("PopulationDensity");
      float PresonsHectares = row.getFloat("PresonsHectare");
      float HousePrices = row.getFloat("HousePrice");
      float HouseSaleRates = row.getFloat("HouseSaleRate");
      float EmploymentRates = row.getFloat("EmploymentRate");
      float UnemployRates = row.getFloat("UnemployRate");
      float AccessToTraffics = row.getFloat("AccessToTraffic");
      float Traffics = row.getFloat("Traffic");
      float Transportations = row.getFloat("Transportation");
      float ChildrenObesityRates = row.getFloat("ChildrenObesityRate");
      float IncapacityRates = row.getFloat("IncapacityRate");
      float CrimeRates = row.getFloat("CrimeRate");
      float DeliberateFiress = row.getFloat("DeliberateFires");
      float StudentScores = row.getFloat("StudentScore");
      float StudentAbsences = row.getFloat("StudentAbsence");
      float ChildrenInLows = row.getFloat("ChildrenInLow");
      float AceessToGreenSpaces = row.getFloat("AceessToGreenSpace");
      float WellBeings = row.getFloat("WellBeing");
      float LifeExpectancys = row.getFloat("LifeExpectancy");
      float PM2_5_Concs = row.getFloat("PM2_5_Conc");
      float Attribut_1s = row.getFloat("Attribut_1");
      float Attribut_2s = row.getFloat("Attribut_2");
      float OtterRecordYears = row.getFloat("OtterRecordYear");
      float MaintenanceCosts = row.getFloat("MaintenanceCost");

      Unique_ID.append(id);
      X_Coordinate.append(x_project);
      Y_Coordinate.append(y_project);
      Ward.append(Wards);
      Borough.append(Boroughs);
      EnvironmentalValue.append(EnvironmentalValues);
      EnvironmentalComposite.append(EnvironmentalComposites);
      RiverDistance.append(RiverDistances);
      RoadDistance.append(RoadDistances);
      RailwayDistance.append(RailwayDistances);
      SpaceValue.append(SpaceValues);
      RiverQuality.append(RiverQualitys);
      PublicBuilding.append(PublicBuildings);
      EducationBuilding.append(EducationBuildings);
      IndustryBuilding.append(IndustryBuildings);
      ResidentBuilding.append(ResidentBuildings);
      PerHousehold.append(PerHouseholds);
      Aged_0_15.append(Aged_0_15s);
      Aged_16_29.append(Aged_16_29s);
      Aged_30_44.append(Aged_30_44s);
      Aged_45_64.append(Aged_45_64s);
      Aged_65__2.append(Aged_65__2s);
      Aged_Working.append(Aged_Workings);
      Population.append(Populations);
      PopulationDensity.append(PopulationDensitys);
      PresonsHectare.append(PresonsHectares);
      HousePrice.append(HousePrices);
      HouseSaleRate.append(HouseSaleRates);
      EmploymentRate.append(EmploymentRates);
      UnemployRate.append(UnemployRates);
      AccessToTraffic.append(AccessToTraffics);
      Traffic.append(Traffics);
      Transportation.append(Transportations);
      ChildrenObesityRate.append(ChildrenObesityRates);
      IncapacityRate.append(IncapacityRates);
      CrimeRate.append(CrimeRates);
      DeliberateFires.append(DeliberateFiress);
      StudentScore.append(StudentScores);
      StudentAbsence.append(StudentAbsences);
      ChildrenInLow.append(ChildrenInLows);
      AceessToGreenSpace.append(AceessToGreenSpaces);
      WellBeing.append(WellBeings);
      LifeExpectancy.append(LifeExpectancys);
      PM2_5_Conc.append(PM2_5_Concs);
      Attribut_1.append(Attribut_1s);
      Attribut_2.append(Attribut_2s);
      OtterRecordYear.append(OtterRecordYears);
      MaintenanceCost.append(MaintenanceCosts);
      
    }

    Single_Features = new Single_Feature[t_len];
    for (int i = 0; i <t_len; i++) {
      Single_Features[i] = new Single_Feature(Unique_ID.get(i), X_Coordinate.get(i), Y_Coordinate.get(i), Ward.get(i), Borough.get(i), EnvironmentalValue.get(i), 
        EnvironmentalComposite.get(i), RiverDistance.get(i), RoadDistance.get(i), RailwayDistance.get(i), SpaceValue.get(i), RiverQuality.get(i), PublicBuilding.get(i), 
        EducationBuilding.get(i), IndustryBuilding.get(i), ResidentBuilding.get(i), PerHousehold.get(i), Aged_0_15.get(i), Aged_16_29.get(i), Aged_30_44.get(i), Aged_45_64.get(i), 
        Aged_65__2.get(i), Aged_Working.get(i), Population.get(i), PopulationDensity.get(i), PresonsHectare.get(i), HousePrice.get(i), HouseSaleRate.get(i), EmploymentRate.get(i), 
        UnemployRate.get(i), AccessToTraffic.get(i), Traffic.get(i), Transportation.get(i), ChildrenObesityRate.get(i), IncapacityRate.get(i), CrimeRate.get(i), DeliberateFires.get(i), 
        StudentScore.get(i), StudentAbsence.get(i), ChildrenInLow.get(i), AceessToGreenSpace.get(i), WellBeing.get(i), LifeExpectancy.get(i), PM2_5_Conc.get(i), Attribut_1.get(i), 
        Attribut_2.get(i), OtterRecordYear.get(i), MaintenanceCost.get(i)
        );
    }
  }
}
