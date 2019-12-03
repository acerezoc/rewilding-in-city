void GUI() {

  cp5 = new ControlP5(this);


  //BASE_MAP
  Group Basic_Map = cp5.addGroup("Basic_Map")
    .setLabel("Basic Map")
    .setHeight(20)
    .setSize(200, 20)
    .setPosition(140, 100)
    .setBackgroundColor(color(#ebe9ea))
    .setColorLabel(color(255))
    .setBackgroundHeight(300)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("BASIC_FUNCTION")
    .setText("BASIC FUNCTION")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(Basic_Map)
    ;

  cp5.addIcon("BASE_MAP_ICON", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 60)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Basic_Map)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("BASE_MAP_TET")
    .setText("BASE MAP")
    .setPosition(50, 62)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Basic_Map)
    ;

  cp5.addIcon("ENVIRONMENT_MAP_ICON", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 100)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Basic_Map)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("ENVIRONMENT_MAP_TET")
    .setText("ENVIRONMENT MAP")
    .setPosition(50, 102)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Basic_Map)
    ;

  cp5.addIcon("SOCIETY_MAP_ICON", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 140)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Basic_Map)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("SOCIETY_MAP_TET")
    .setText("SOCIETY MAP")
    .setPosition(50, 142)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Basic_Map)
    ;

  cp5.addIcon("ADD_NEW_MAP1_ICON", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 180)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Basic_Map)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("ADD_NEW_MAP1_TET")
    .setText("ADD NEW MAP1")
    .setPosition(50, 182)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Basic_Map)
    ;


  cp5.addIcon("ADD_NEW_MAP2_ICON", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 220)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Basic_Map)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("ADD_NEW_MAP2_TET")
    .setText("ADD NEW MAP2")
    .setPosition(50, 222)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Basic_Map)
    ;


  cp5.addSlider("Transparent")
    .setPosition(20, 260)
    .setWidth(100)
    .setRange(0, 255) 
    .setValue(255)
    .setNumberOfTickMarks(10)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Basic_Map)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("Transparent")
    ;
  //BASE_MAP

  //DATA CHECKING
  Group DATA_Checking = cp5.addGroup("DATA_Checking")
    .setLabel("DATA Checking")
    .setHeight(20)
    .setSize(200, 20)
    .setPosition(140, 100)
    .setBackgroundColor(color(#ebe9ea))
    .setColorLabel(color(255))
    .setBackgroundHeight(460)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("ENVIRONMENTAL_DATA")
    .setText("ENVIRONMENTAL DATA")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(DATA_Checking)
    ;

  cp5.addSlider("NAME1")
    .setPosition(20, 60)
    .setWidth(100)
    .setRange(0, 1) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("environmentalComposite")
    ;

  cp5.getController("NAME1").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].environmentalComposite);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME2")
    .setPosition(20, 80)
    .setWidth(100)
    .setRange(0, 1) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("riverQuality")
    ;
  cp5.getController("NAME2").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].riverQuality);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME3")
    .setPosition(20, 100)
    .setWidth(100)
    .setRange(0, 1) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("riverDistance")
    ;
  cp5.getController("NAME3").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].riverDistance);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME4")
    .setPosition(20, 120)
    .setWidth(100)
    .setRange(0, 1) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("spaceValue")
    ;
  cp5.getController("NAME4").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].spaceValue);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME5")
    .setPosition(20, 140)
    .setWidth(100)
    .setRange(0, 1) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("railwayDistance")
    ;
  cp5.getController("NAME5").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].railwayDistance);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME6")
    .setPosition(20, 160)
    .setWidth(100)
    .setRange(0, 1) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("roadDistance")
    ;
  cp5.getController("NAME6").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].roadDistance);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NEWLAYER1")
    .setPosition(20, 180)
    .setWidth(100)
    .setRange(14, 17) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("PM2.5")
    ;
  cp5.getController("NEWLAYER1").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].pM2_5_Conc);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NEWLAYER2")
    .setPosition(20, 200)
    .setWidth(100)
    .setRange(2.3, 7.8) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("TRAFFIC")
    ;
  cp5.getController("NEWLAYER2").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].traffic);
      setSize(10, 12);
    }
  }
  );

  myTextlabelA = cp5.addTextlabel("SOCIAL_DATA")
    .setText("SOCIAL DATA")
    .setPosition(16, 240)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(DATA_Checking)
    ;

  cp5.addSlider("NAME7")
    .setPosition(20, 280)
    .setWidth(100)
    .setRange(0, 10000) 
    .setValue(0)
    .setNumberOfTickMarks(1001)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("publicBuilding(m2)")
    ;
  cp5.getController("NAME7").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].publicBuilding);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME8")
    .setPosition(20, 300)
    .setWidth(100)
    .setRange(0, 10000) 
    .setValue(0)
    .setNumberOfTickMarks(1001)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("educationBuilding(m2)")
    ;
  cp5.getController("NAME8").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].educationBuilding);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME9")
    .setPosition(20, 320)
    .setWidth(100)
    .setRange(0, 10000) 
    .setValue(0)
    .setNumberOfTickMarks(1001)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("residentBuilding(m2)")
    ;
  cp5.getController("NAME9").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].residentBuilding);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME10")
    .setPosition(20, 340)
    .setWidth(100)
    .setRange(0, 10000) 
    .setValue(0)
    .setNumberOfTickMarks(1001)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("industryBuilding(m2)")
    ;
  cp5.getController("NAME10").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].industryBuilding);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME11")
    .setPosition(20, 360)
    .setWidth(100)
    .setRange(0, 550) 
    .setValue(0)
    .setNumberOfTickMarks(1001)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("Population")
    ;
  cp5.getController("NAME11").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].population);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NAME12")
    .setPosition(20, 380)
    .setWidth(100)
    .setRange(0, 695000) 
    .setValue(0)
    .setNumberOfTickMarks(1001)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("HousePrice(£)")
    ;
  cp5.getController("NAME12").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].housePrice);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NEWLAYER3")
    .setPosition(20, 400)
    .setWidth(100)
    .setRange(-9.4, 18.3) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("AceessToGreenSpace")
    ;
  cp5.getController("NEWLAYER3").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].aceessToGreenSpace);
      setSize(10, 12);
    }
  }
  );

  cp5.addSlider("NEWLAYER4")
    .setPosition(20, 420)
    .setWidth(100)
    .setRange(77, 84) 
    .setValue(0)
    .setNumberOfTickMarks(101)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(DATA_Checking)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("LifeExpectancy(year)")
    ;
  cp5.getController("NEWLAYER4").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(DATA_INPUT.Single_Features[select_].lifeExpectancy);
      setSize(10, 12);
    }
  }
  );
  //DATA CHECKING

  //POTENTIAL_CORRIDOR
  Group Potential_Corridor = cp5.addGroup("Potential_Corridor")
    .setLabel("Potential Corridor")
    .setHeight(20)
    .setSize(200, 20)
    .setPosition(140, 100)
    .setBackgroundColor(color(#ebe9ea))
    .setColorLabel(color(255))
    .setBackgroundHeight(180)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("POTENTIAL_CORRIDOR")
    .setText("POTENTIAL CORRIDOR")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(Potential_Corridor)
    ;

  cp5.addIcon("SUITABILITYMAP", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 60)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Potential_Corridor)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("SUITABILITYMAP_TET")
    .setText("SUITABILITYMAP MAP")
    .setPosition(50, 62)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Potential_Corridor)
    ;

  cp5.addSlider("THRESHOLD_")
    .setPosition(20, 100)
    .setWidth(100)
    .setHeight(15)
    .setRange(0, 2) 
    .setValue(0)
    .setNumberOfTickMarks(200)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Potential_Corridor)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("THRESHOLD")
    ;

  myTextarea = cp5.addTextarea("THRESHOLD_INTRO")
    .setLineHeight(20)
    .setText("USE THE THRESHOLD TO ADJUST THE POENTIAL CORRIDOR")
    .setPosition(20, 120)
    .setSize(180, 180)
    .setColorValue(#6491aa)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#6491aa)) 
    .setFont(createFont(Front, 10))
    .setGroup(Potential_Corridor)
    ;
  //POTENTIAL_CORRIDOR

  //ENVIRONMENTAL_WEIGHT
  Group Environment = cp5.addGroup("Environment")
    .setHeight(20)
    .setSize(200, 20)
    .setPosition(160, 100)
    .setColorForeground(color(#6491aa))
    .setBackgroundColor(color(#ebe9ea))
    .setColorLabel(color(255))
    .setBackgroundHeight(420)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;


  myTextlabelA = cp5.addTextlabel("ENVIRONMENTA_WEIGHT")
    .setText("ENVIRONMENTA WEIGHT")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(Environment)
    ;

  cp5.addSlider("WEIGHT1")
    .setPosition(20, 60)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(0.7)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("WEIGHT1")
    ;

  cp5.addSlider("WEIGHT2")
    .setPosition(20, 100)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(0.7)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("WEIGHT2")
    ;

  cp5.addSlider("WEIGHT3")
    .setPosition(20, 140)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(0.7)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("WEIGHT3")
    ;

  cp5.addSlider("WEIGHT4")
    .setPosition(20, 180)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(0.7)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("WEIGHT4")
    ;

  cp5.addSlider("WEIGHT5")
    .setPosition(20, 220)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(-0.5)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354))
    .setFont(createFont(Front, 10))
    .setLabel("WEIGHT5")
    ;

  cp5.addSlider("WEIGHT6")
    .setPosition(20, 260)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(-0.5)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("WEIGHT6")
    ;

  cp5.addSlider("UNKNOWN1")
    .setPosition(20, 300)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(0.1)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("UNKNOWN1")
    ;

  cp5.addSlider("UNKNOWN2")
    .setPosition(20, 340)
    .setWidth(100)
    .setRange(-1, 1) 
    .setValue(0.1)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Environment)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("UNKNOWN2")
    ;

  cp5.addButton("WEIGHT_SETTING")
    .setLabel("WEIGHT SETTING")   
    .setValue(0)
    .setPosition(20, 380)
    .setSize(100, 30)
    .setGroup(Environment)
    .setColorForeground(color(#6491aa))
    .setColorBackground(color(#6491aa))
    .setFont(createFont(Front, 10))
    .setColorActive(color(#f29b53)) 
    ;
  //ENVIRONMENTAL_WEIGHT



  //SOCIETY  
  Group Society = cp5.addGroup("Society")
    .setHeight(20)
    .setSize(200, 20)
    .setPosition(160, 100)
    .setColorForeground(color(#6491aa))
    .setBackgroundColor(color(#ebe9ea))
    .setColorActive(color(#6491aa)) 
    .setColorLabel(color(255))
    .setBackgroundHeight(180)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("SOCIAL_IMPACT")
    .setText("SOCIAL IMPACT")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(Society)
    ;

  cp5.addIcon("SOCIAL_CALCULATOR", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 60)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Society)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("SOCIAL_CALCULATOR_TXT")
    .setText("SOCIAL CALCULATOR")
    .setPosition(50, 62)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Society)
    ;

  cp5.addSlider("SOCIAL_RADIUS")
    .setPosition(20, 100)
    .setWidth(100)
    .setHeight(15)
    .setRange(100, 500) 
    .setValue(200)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Society)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("RADIUS")
    ;

  myTextarea = cp5.addTextarea("SOCIAL_RADIUS_INTRO")
    .setLineHeight(20)
    .setText("USE THE RADIUS TO ADJUST THE SOCIAL IMPACTS")
    .setPosition(20, 120)
    .setSize(180, 180)
    .setColorValue(#6491aa)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#6491aa)) 
    .setFont(createFont(Front, 10))
    .setGroup(Society)
    ;
  //SOCIETY  

  //INTERVENTION
  Group Intervention = cp5.addGroup("Intervention")
    .setHeight(20)
    .setSize(200, 20)
    .setPosition(160, 100)
    .setColorForeground(color(#6491aa))
    .setBackgroundColor(color(#ebe9ea))
    .setColorActive(color(#6491aa)) 
    .setColorLabel(color(255))
    .setBackgroundHeight(240)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("INTERVENTION_TXT")
    .setText("INTERVENTION")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(Intervention)
    ;

  cp5.addButton("INTERVENTION1")
    .setValue(0)
    .setPosition(20, 60)
    .setSize(100, 30)
    .setGroup(Intervention)
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#f9ceaa))
    .setFont(createFont(Front, 10))
    .setColorActive(color(#6491aa)) 
    ;

  cp5.addSlider("INTERVENTION1_NUMBER")
    .setPosition(140, 60)
    .setWidth(50)
    .setHeight(30)
    .setRange(0, 50) 
    .setValue(0)
    .setNumberOfTickMarks(51)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Intervention)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("AERATION")
    ;
  cp5.getController("INTERVENTION1_NUMBER").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(INTERVENTION1_num);
      setSize(10, 12);
    }
  }
  );

  cp5.addButton("INTERVENTION2")
    .setValue(0)
    .setPosition(20, 100)
    .setSize(100, 30)
    .setGroup(Intervention)
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#f29b53))
    .setFont(createFont(Front, 10))
    .setColorActive(color(#6491aa)) 
    ;

  cp5.addSlider("INTERVENTION2_NUMBER")
    .setPosition(140, 100)
    .setWidth(50)
    .setHeight(30)
    .setRange(0, 50) 
    .setValue(0)
    .setNumberOfTickMarks(51)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Intervention)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("DREDGING")
    ;
  cp5.getController("INTERVENTION2_NUMBER").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(INTERVENTION2_num);
      setSize(10, 12);
    }
  }
  );

  cp5.addButton("INTERVENTION3")
    .setValue(0)
    .setPosition(20, 140)
    .setSize(100, 30)
    .setGroup(Intervention)
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#ef6a31))
    .setFont(createFont(Front, 10))
    .setColorActive(color(#6491aa)) 
    ;
  cp5.addSlider("INTERVENTION3_NUMBER")
    .setPosition(140, 140)
    .setWidth(50)
    .setHeight(30)
    .setRange(0, 50) 
    .setValue(0)
    .setNumberOfTickMarks(51)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Intervention)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("GREEN ISLAND")
    ;
  cp5.getController("INTERVENTION3_NUMBER").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(INTERVENTION3_num);
      setSize(10, 12);
    }
  }
  );

  cp5.addButton("INTERVENTION4")
    .setValue(0)
    .setPosition(20, 180)
    .setSize(100, 30)
    .setGroup(Intervention)
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#ef4d32))
    .setColorActive(color(#6491aa)) 
    .setFont(createFont(Front, 10))
    ;
  cp5.addSlider("INTERVENTION4_NUMBER")
    .setPosition(140, 180)
    .setWidth(50)
    .setHeight(30)
    .setRange(0, 50) 
    .setValue(0)
    .setNumberOfTickMarks(51)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(Intervention)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("PLANT")
    ;
  cp5.getController("INTERVENTION4_NUMBER").setBehavior(new ControlBehavior() {
    public void update() { 
      setValue(INTERVENTION4_num);
      setSize(10, 12);
    }
  }
  );
  //INTERVENTION

  //CALCULATOR 
  Group NaturalExpansion = cp5.addGroup("Natural_Expansion")
    .setLabel("Natural Expansion")
    .setSize(200, 20)
    .setHeight(20)
    .setColorForeground(color(#6491aa))
    .setBackgroundColor(color(#ebe9ea))
    .setColorActive(color(#6491aa)) 
    .setColorLabel(color(255))
    .setBackgroundHeight(180)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("NATURAL_EXPANSION")
    .setText("NATURAL EXPANSION")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(NaturalExpansion)
    ;


  cp5.addIcon("NATURAL_CALCULATOR", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 60)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(NaturalExpansion)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;

  myTextlabelA = cp5.addTextlabel("NATURAL_CALCULATOR_TXT")
    .setText("NATURAL CALCULATOR")
    .setPosition(50, 62)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(NaturalExpansion)
    ;

  cp5.addSlider("IMPACT_DEGREE")
    .setPosition(20, 100)
    .setWidth(100)
    .setHeight(15)
    .setRange(0, 1) 
    .setValue(11)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(NaturalExpansion)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("DEGREE")
    ;

  cp5.addSlider("TIMELINE")
    .setPosition(20, 140)
    .setWidth(100)
    .setHeight(15)
    .setRange(0, 200) 
    .setValue(21)
    .setNumberOfTickMarks(21)
    .setSliderMode(Slider.FLEXIBLE)
    .setGroup(NaturalExpansion)
    .setColorLabel(color(#6491aa))
    .setColorForeground(color(#f2954b))
    .setColorBackground(color(#6491aa))  
    .setColorCaptionLabel(color(#6491aa))
    .setColorActive(color(#115354)) 
    .setFont(createFont(Front, 10))
    .setLabel("TIMELINE")
    ;
  //CALCULATOR 

  //RESULT
  Group Result = cp5.addGroup("Result")
    .setSize(200, 20)
    .setHeight(20)
    .setColorForeground(color(#6491aa))
    .setBackgroundColor(color(#ebe9ea))
    .setColorActive(color(#6491aa)) 
    .setColorLabel(color(255))
    .setBackgroundHeight(180)
    .setFont(createFont(Front, 14))
    .setColorBackground(color(#6491aa))
    .setColorForeground(color(#f2954b))
    ;

  myTextlabelA = cp5.addTextlabel("SCENARIO_RESULT")
    .setText("SCENARIO RESULT")
    .setPosition(16, 20)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 12))
    .setGroup(Result)
    ;

  cp5.addIcon("RESULT_DISPLAY", 10)
    .setColorForeground(color(105, 155, 155))
    .setPosition(-4, 60)
    .setFont(createFont("fontawesome-webfont.ttf", 25))
    .setFontIcons(#00f04d, #00f04b)
    .setSwitch(true)
    .setGroup(Result)
    .setColorForeground(color(#6491aa))
    .setColorActive(color(#f2954b)) 
    ;  

  myTextlabelA = cp5.addTextlabel("RESULT_DISPLAY_TET")
    .setText("Detail Report")
    .setPosition(50, 62)
    .setColorValue(#6491aa)
    .setFont(createFont(Front, 10))
    .setGroup(Result)
    ;

  cp5.addButton("SAVE")
    .setValue(0)
    .setPosition(20, 100)
    .setSize(100, 30)
    .setGroup(Result)
    .setColorForeground(color(#6491aa))
    .setColorBackground(color(#6491aa))
    .setFont(createFont(Front, 10))
    .setColorActive(color(#f29b53)) 
    ;

  cp5.addButton("CLEAN")
    .setValue(0)
    .setPosition(20, 140)
    .setSize(100, 30)
    .setGroup(Result)
    .setColorForeground(color(#6491aa))
    .setColorBackground(color(#6491aa))
    .setFont(createFont(Front, 10))
    .setColorActive(color(#f29b53)) 
    ;
  //RESULT

  //ICON_LIST
  accordion = cp5.addAccordion("acc")
    .setPosition(40, 140)
    .addItem(Basic_Map)
    .addItem(DATA_Checking)
    .addItem(Environment)
    .setWidth(300)
    .addItem(Potential_Corridor)
    .addItem(Intervention)
    .addItem(NaturalExpansion)
    .addItem(Society)
    .addItem(Result)
    ;
  accordion.open(0);
  accordion.setCollapseMode(Accordion.MULTI);
  //ICON_LIST
}

//Intervention
public void INTERVENTION1() {
  CAPTIAL_COST += 1;
  MAINTENCE += 70;
  INTERVENTION1_num +=1;
  //if (DATA_INPUT.Single_Features[select_].Environmental_value<THRESHOLD_+Calculator(select_)+1) {
    DATA_INPUT.Single_Features[select_].Environmental_value+= THRESHOLD_*0.2;
  //}
  if (select_>1) {
    INTERVENTION1_group.append(select_);
    Natrual_Improving.append(select_);
  }
}

public void INTERVENTION2() {
  CAPTIAL_COST += 10;
  MAINTENCE += 65;
  INTERVENTION2_num +=1;
  //if (DATA_INPUT.Single_Features[select_].Environmental_value<THRESHOLD_+Calculator(select_)+1) {
    DATA_INPUT.Single_Features[select_].Environmental_value+= THRESHOLD_*0.4;
  //}
  if (select_>1) {
    INTERVENTION2_group.append(select_);
    Natrual_Improving.append(select_);
  }
}

public void INTERVENTION3() {
  CAPTIAL_COST += 1.95;
  MAINTENCE += 90;
  INTERVENTION3_num +=1;
  //if (DATA_INPUT.Single_Features[select_].Environmental_value<THRESHOLD_+Calculator(select_)+1) {
    DATA_INPUT.Single_Features[select_].Environmental_value+= THRESHOLD_*0.6;
  //}
  if (select_>1) {
    INTERVENTION3_group.append(select_);
    Natrual_Improving.append(select_);
  }
}

public void INTERVENTION4() {
  CAPTIAL_COST += 20;
  MAINTENCE += 300;
  INTERVENTION4_num +=1;
  //if (DATA_INPUT.Single_Features[select_].Environmental_value<THRESHOLD_+Calculator(select_)+1) {
    DATA_INPUT.Single_Features[select_].Environmental_value+= THRESHOLD_*0.8;
  //}
  if (select_>1) {
    INTERVENTION4_group.append(select_);
    Natrual_Improving.append(select_);
  }
}
//Intervention



//Function

public void CLEAN() {
  Social_Impact.clear();
  Natrual_Improved.clear();
  Natrual_Improving.clear();
  INTERVENTION1_group.clear();
  INTERVENTION2_group.clear();
  INTERVENTION3_group.clear();
  INTERVENTION4_group.clear();
  ENVIRONMENTAL_VALUE = 0;
  TIMESCALE = 0;
  AREA = 0;
  CAPTIAL_COST = 0;
  year = 0 ;
  MAINTENCE = 0;
  TOTALCOST=0;
  LIFEEXPECTANCYEXTEND=0;
  MONEYSAVE=0;
  POPULATION=0;
  HOUSEHOLD=0;
  PUBLIC_BUILDING=0;
  EDUCATION_BUILDING=0;
  RESIDENT_BUILDING=0;
  INDSUTRY_BUILDING=0;
  PresonsHectare_ave=0;
  HOUSEPRICE=0;
  HouseSaleRate_ave=0;
  EmploymentRate_ave=0;
  UnemployRate_ave=0;
  ChildrenObesityRate_ave=0;
  CrimeRate_ave=0;
  StudentScore_ave=0;
  otterrate=0;
  LIFEEXPECTANCY=0;
  ACCESSTOGREENSPCAE=0;
  wellbeing_ave=0;
  Aged_Workings_ave=0;
  PopulationDensitys_ave=0;
  Transportations_ave=0;
  IncapacityRates_ave=0;
  DeliberateFiress_ave=0;
  StudentAbsences_ave=0;





  for (Single_Feature i : DATA_INPUT.Single_Features ) {
    i.Environmental_value = Calculator(i.id);
  }
}

public void WEIGHT_SETTING() {
  for (Single_Feature i : DATA_INPUT.Single_Features) {
    i.Environmental_value = Calculator(i.id);
  }
}

//Function
