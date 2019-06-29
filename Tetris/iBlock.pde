class iBlock extends Block {
  
  //constructor
  public iBlock() {
    super();
    p1.x = this.x;
    p1.y = this.y - 20;
    p2.x = this.x;
    p2.y = this.y;
    p3.x = this.x;
    p3.y = this.y + 20;
    p4.x = this.x;
    p4.y = this.y + 40;
  }
  
}
