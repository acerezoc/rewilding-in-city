class GRID {
  Points[] points;                  
  PVector mouse;                      
  PVector select_point; 
  PVector[] Terrain;                  
  int t_len;
  FloatList composite1;
  FloatList Riverdis_value_remap;
  FloatList Road_value_remap;
  FloatList Railway_value_remap;
  FloatList Space_value_remap;
  FloatList Riverquality_value_remap;
  FloatList SUM_public;
  FloatList SUM_educat;
  FloatList SUM_Changi;
  FloatList SUM_reside;
  FloatList All_Ages_2;
  FloatList House_Pric;
  FloatList House_Sale;
  FloatList Employment;
  FloatList Unemployme;
  FloatList Household; 
  FloatList Househol_1;
  Table table;

  GRID(String csv_path) {
    initialise_terrain(csv_path);
  }

  void initialise_terrain(String csv_path) {

    //----------------SetUp From Start-------------------
    table = loadTable(csv_path, "header");  
    t_len = table.getRowCount();
    Terrain = new PVector[t_len];
    composite1 = new FloatList();
    Riverdis_value_remap = new FloatList();
    Road_value_remap = new FloatList();
    Railway_value_remap = new FloatList();
    Space_value_remap = new FloatList();
    Riverquality_value_remap = new FloatList();
    SUM_public = new FloatList();
    SUM_educat = new FloatList();
    SUM_Changi = new FloatList();
    SUM_reside = new FloatList();
    All_Ages_2 = new FloatList();
    House_Pric = new FloatList();
    House_Sale = new FloatList();
    Employment = new FloatList();
    Unemployme = new FloatList();
    Household = new FloatList();
    Househol_1 = new FloatList();
    int k = 0;
    
    for (TableRow row : table.rows()) {
      
      //----------------Extral Value From Table----------------
      float x = row.getFloat("X");
      float y = row.getFloat("Y");
      float z1 = row.getFloat("composite1");
      float z2 = row.getFloat("Riverdis_value_remap");
      float z3 = row.getFloat("Road_value_remap");
      float z4 = row.getFloat("Railway_value_remap");
      float z5 = row.getFloat("Space_value_remap");
      float z6 = row.getFloat("Riverquality_value_remap");
      float z7 = row.getFloat("SUM_public");
      float z8 = row.getFloat("SUM_educat");
      float z9 = row.getFloat("SUM_Changi");
      float z10 = row.getFloat("SUM_reside");
      float z11 = row.getFloat("All_Ages_2");
      float z12 = row.getFloat("House_Pric");
      float z13 = row.getFloat("House_Sale");
      float z14 = row.getFloat("Employment");
      float z15 = row.getFloat("Unemployme");
      float z16 = row.getFloat("Household");
      float z17 = row.getFloat("Househol_1");

      //----------------Form Array To Read--------------------
      PVector rw_tmp = new PVector((x-500000)*0.03-500, 800-(y-170000)*0.03+200);  

      //----------------Match With The Previous State---------
      Terrain[k] = rw_tmp.copy();
      composite1.append(z1);
      Riverdis_value_remap.append(z2);
      Road_value_remap.append(z3);
      Railway_value_remap.append(z4);
      Space_value_remap.append(z5);
      Riverquality_value_remap.append(z6);
      SUM_public.append(z7);
      SUM_educat.append(z8);
      SUM_Changi.append(z9);
      SUM_reside.append(z10);
      All_Ages_2.append(z11);
      House_Pric.append(z12);
      House_Sale.append(z13);
      Employment.append(z14);
      Unemployme.append(z15);
      Household.append(z16);
      Househol_1.append(z17);
      k++;
    }  
    points = new Points[table.getRowCount()];
    for (int i = 0; i < table.getRowCount(); i++) {
      points[i] = new Points(Terrain[i].x, Terrain[i].y, 
        composite1.get(i)*0.5
        +Riverdis_value_remap.get(i)*0.8 
        -Road_value_remap.get(i)*0.2   
        -Railway_value_remap.get(i)*0.2
        +Space_value_remap.get(i)*0.5
        +Riverquality_value_remap.get(i)*0.5, 
        Road_value_remap.get(i)+Railway_value_remap.get(i)*4-Riverdis_value_remap.get(i)*2-Riverquality_value_remap.get(i)*2 );
    }
  }
}
