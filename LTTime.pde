class LTTime {
  void draw(){
    LTList.Speaker speaker = ltList.current().speaker;
    textAlign(LEFT, TOP);
    textFont (largeFont);
    text(speaker.title, 100, 150);
    textFont (font);
    text(speaker.name, 100, 250);

    fill(255);
    textAlign(CENTER);
    textFont(veryLargeFont);
    fill(255);
    if(timer.isOverMaxTime()){
      fill(255, 0, 0);
    }
    text(timer.getTimeText(), width/2, height/ 3 * 2);
  }
}