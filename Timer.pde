class Timer {
  private final int MINUTE = 60;
  private final int MAX_LT_TIME = 5 * MINUTE;

  private int startTime = 0;

  void startTimer(){
    startTime = millis();
  }
  
  String getTimeText(){
    int millis = millis() - startTime;
    int sec = millis / 1000;

    String minute = nf(sec / 60, 2, 0);
    String second = nf(sec % 60, 2, 0);
    return minute + ":" + second;
  }

  Boolean isOverMaxTime(){
    int millis = millis() - startTime;
    int sec = millis / 1000;
    return MAX_LT_TIME < sec;
  }
}