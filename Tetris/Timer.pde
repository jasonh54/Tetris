class Timer {
  //local vars initialized
  int timestamp;
  
  //constructor
  public Timer() {
    timestamp = 0;
  }
  
  public void setInterval(Runnable f, int ms) {
    if (timestamp + ms < millis()) {
      timestamp = millis();
      f.run();
    }
  }
  
  public void waitInterval(int ms){
     timestamp = millis();
     while(true){
       if(timestamp + ms <= millis()){
          break; 
       }
     }
  }
}
