class DATA_Visulization {
  float a;
  float b;
  float c;
  float x_hex = 100;
  float y_hex = 200;
  float extend = 120;
  float size = 30;
  float move = 30;
  float col = 0;
  int single_random;
  IntList random;
  DATA_Visulization(float a_, float b_, float c_) {
    a = a_;
    b = b_;
    c = c_;
  }

  void display() {
    translate(-30, 0);
    fill(col);
    textSize(12);
    text("Green Infrustructure:"+Value1, extend-move, y_hex+3*move+60);
    text("River Distance:"+Value2, extend-move, y_hex+4*move+60);
    text("Road Distance:"+Value3, extend-move, y_hex+5*move+60);
    text("Railway Distance:"+Value4, extend-move, y_hex+6*move+60);
    text("Space Value:"+Value5, extend-move, y_hex+7*move+60);
    text("River Value:"+Value6, extend-move, y_hex+8*move+60);

    Legend(extend-move-22, y_hex+3*move-5+60, 0.4, 0.6, Value1);
    Legend(extend-move-22, y_hex+4*move-5+60, 0.4, 0.6, Value2);
    Legend(extend-move-22, y_hex+5*move-5+60, 0.4, 0.6, Value3);
    Legend(extend-move-22, y_hex+6*move-5+60, 0.4, 0.6, Value4);
    Legend(extend-move-22, y_hex+7*move-5+60, 0.4, 0.6, Value5);
    Legend(extend-move-22, y_hex+8*move-5+60, 0.4, 0.6, Value6);

    if (icon7==false) {
      Legend(extend-move-22, y_hex+move+3*extend-5, 441, 820, Value7);
      Legend(extend-move-22, y_hex+2*move+3*extend-5, 13, 24, Value8);
      Legend(extend-move-22, y_hex+3*move+3*extend-5, 43, 81, Value9);
      Legend(extend-move-22, y_hex+4*move+3*extend-5, 275, 511, Value10);
      Legend(extend-move-22, y_hex+5*move+3*extend-5, 200211, 371820, Value11);
      Legend(extend-move-22, y_hex+6*move+3*extend-5, 24743, 45952, Value12);
    } else {
      Legend(extend-move-10, y_hex+move+3*extend-5, 441, 820, Value7_ave);
      Legend(extend-move-10, y_hex+2*move+3*extend-5, 13, 24, Value8_ave);
      Legend(extend-move-10, y_hex+3*move+3*extend-5, 43, 81, Value9_ave);
      Legend(extend-move-10, y_hex+4*move+3*extend-5, 275, 511, Value10_ave);
      Legend(extend-move-10, y_hex+5*move+3*extend-5, 200211, 371820, Value11_ave);
      Legend(extend-move-10, y_hex+6*move+3*extend-5, 24743, 45952, Value12_ave);
    }
    text("SUM_Public:"+Value7+"&&"+Value7_ave+"m2", extend-move, y_hex+move+3*extend);
    text("SUM_Educat:"+Value8+"&&"+Value8_ave+"m2", extend-move, y_hex+2*move+3*extend);
    text("SUM_Changi:"+Value9+"&&"+Value9_ave+"m2", extend-move, y_hex+3*move+3*extend);
    text("SUM_Reside:"+Value10+"&&"+Value10_ave+"m2", extend-move, y_hex+4*move+3*extend);
    text("Household_Price:"+Value11+"&&"+Value11_ave+"£", extend-move, y_hex+5*move+3*extend);
    text("Family_Income:"+Value12+"&&"+Value12_ave+"£/per/year", extend-move, y_hex+6*move+3*extend);
    fill(#3C6D28);
    text("BASICMAP", 100, 108+60);
    text("SUITABILITY MAP", 100, 150+60);
    text("EXISTING CORRIDOR", 100, 190+60);//TITLE
    text("Environment" + select_com, extend-move, y_hex+move+60);
    Legend(extend-move-22, y_hex+move-5+60, 1.2, 1.5, select_com); 
    text("SUM:"+sumnum+"    number:"+openSet.size(), extend-move, y_hex+2*move+60);
    Legend(extend-move-22, y_hex+2*move-5+60, 1.2, 1.45, sumnum/openSet.size()-year*0.017); 
    text("Social", extend-move, y_hex-move+3*extend);
    text("Cost:" +Cost+"      DAY:" + DAY, extend-move, y_hex-move+5*extend);
    text("Year:" +year, extend-move, y_hex-move+5*extend+15);
    text("Social Total Calculator", extend-move, y_hex-move+6*extend-30);
    text("START", width-50, 110+60);
    text("ADD", width-50, 150+60);
    text("EXPANSION", width-50, 190+60);

    //----------------Architect Scale---------------------
    stroke(105, 155, 155);
    strokeWeight(2);
    text(int(3000*2.7/zoom)+"m", 350, height - 138);
    line(100, height - 130, 100, height - 135);
    line(345, height - 130, 345, height - 135);
    line(100, height - 130, 345, height - 130);
    text(0, 80, height - 138);
    
    //----------------Intervention Display Setting---------
    text(Aerations.size(), width-50, height-365);
    pushStyle();
    noStroke();
    fill(#f9ceaa);
    ellipse(width-200, height-370, 10, 10);
    popStyle(); 

    text(Dredgings.size(), width-50, height-335);
    pushStyle();
    noStroke();
    fill(#f29b53);
    ellipse(width-200, height-340, 10, 10);
    popStyle();

    text(Islands.size(), width-50, height-305);
    pushStyle();
    noStroke();
    fill(#ef6a31);
    ellipse(width-200, height-310, 10, 10);
    popStyle();

   text(Plants.size(), width-50, height-275);
    pushStyle();
    noStroke();
    fill(#ef4d32);
    ellipse(width-200, height-280, 10, 10);
    popStyle();

  }
}
