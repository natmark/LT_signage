class BreakTime {
   void draw(){
    String info = ltList.current().info;
    fill(255);
    textAlign(CENTER);
    textFont (veryLargeFont);
    
    fill(255);
    text(info, width/2, height/ 3 * 2);
  }
}