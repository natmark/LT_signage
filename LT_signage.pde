Timer timer = new Timer();
Mode mode = Mode.Opening;
BreakTime breakTime = new BreakTime();
LTTime ltTime = new LTTime();
ChangingTime changingTime = new ChangingTime();
Opening opening;
Closing closing;
LTList ltList;
PImage header;
PFont font;
PFont largeFont;
PFont veryLargeFont;

void setup(){
  background(0);
  fullScreen();
  // size(800,600);
  timer.startTimer();
  header = loadImage("main-visual.jpg");
  
  int baseSize = min(width, height);
  font = createFont("Arial", baseSize / 14, true);
  largeFont = createFont("Arial", baseSize / 12, true);
  veryLargeFont = createFont("Arial", baseSize / 4, true);
  opening = new Opening(header);
  closing = new Closing(header);
  ltList = new LTList("timetable.csv");
}

void draw(){
  background(0);
  
  switch(ltList.current().mode){
    case Opening:
      opening.draw();
      break;
    case LTTime:
      ltTime.draw();
      break;
    case ChangingTime:
      changingTime.draw();
      break;
    case BreakTime:
      breakTime.draw();
      break;
    case Closing:
      closing.draw();
      break;
  }
}

void keyPressed(){
  if(keyCode == 37){ // Left
    ltList.prev();
    if(ltList.current().mode == Mode.LTTime){
      timer.startTimer();
    }    
  }
  if(keyCode == 39){ // Right
    ltList.next();
    if(ltList.current().mode == Mode.LTTime){
      timer.startTimer();
    }
  }
}