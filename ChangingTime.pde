class ChangingTime {
  ChangingTime(){
  }
  void draw(){
    LTList.Speaker speaker = ltList.current().speaker;
    fill(255);
    textAlign(LEFT, TOP);
    textFont (font);
    text("▶ next", 100, 50);
    textFont (largeFont);
    text(speaker.title, 100, 150);
    textFont (font);
    text(speaker.name, 100, 250);
  }
}