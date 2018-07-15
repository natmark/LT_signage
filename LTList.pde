class LTList {
  class Content {
    Mode mode = Mode.Opening;
    Speaker speaker = null;
    String info = "";
    Content(Mode mode, Speaker speaker){
      this.mode = mode;
      this.speaker = speaker;
    }
  }

  class Speaker {
    int order = 0;
    String name = "";
    String title = "";
    Speaker(int order, String name, String title){
      this.order = order;
      this.name = name;
      this.title = title;
    }
  }

  ArrayList<Speaker> speakers = new ArrayList<Speaker>();
  ArrayList<Content> contents = new ArrayList<Content>();
  int index = 0;

  LTList(String filename){
    Content opening = new Content(Mode.Opening, null);
    contents.add(opening);  

    String[] lines = loadStrings(filename);

    for(int i = 1;i < lines.length; i++){
      String[] co = split(lines[i], ',');

      println(co[0],co[1],co[2]);
      if(co[0].equals("")){
        Content breakTime = new Content(Mode.BreakTime, null);
        breakTime.info = co[2];
        contents.add(breakTime);
      } else {
        Speaker speaker = new Speaker(int(co[0]), co[1], co[2]);
        speakers.add(speaker);
        
        Content changingTime = new Content(Mode.ChangingTime, speaker);
        Content ltTime = new Content(Mode.LTTime, speaker);
        contents.add(changingTime);  
        contents.add(ltTime);          
      }
    }

    Content closing = new Content(Mode.Closing, null);
    contents.add(closing);  
  }
  
  Content current() {
    return contents.get(index);
  }
  
  void prev() {
    if(0 >= index) { return; }
    index -= 1;
  }

  void next() {
    if(contents.size() - 1 <= index) { return; }
    index += 1;
  }
}