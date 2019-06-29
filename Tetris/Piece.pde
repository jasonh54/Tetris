class Piece {
  //local vars initialized
  int x;
  int y;
  boolean falltag;
  
  //constructor
  public Piece(int x, int y) {
    this.x = x;
    this.y = y;
    falltag = false;
  }
  
  //set x and y coordinates
  public void setXY(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  //draw the piece
  public void display() {
    fill(255);
    rect(x, y, 20, 20);
  }
  
  //piece class
  //needs xy coordinates
  //falltag
  //draw function to draw out a square at the xy coordinates (do not center it)
  //setXY function setter to set xy coordinates
}
