class Closing {
  PImage header;
  Closing(PImage header){
    this.header = header;
  }
  void draw(){
    image(header, 0, 0, width, height);
  }
}