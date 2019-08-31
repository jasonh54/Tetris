class zBlock extends Block {
  
  //constructor
  public zBlock() {
    super();
    p1.x = this.x - 20;
    p1.y = this.y;
    p2.x = this.x;
    p2.y = this.y;
    p3.x = this.x;
    p3.y = this.y + 20;
    p4.x = this.x + 20;
    p4.y = this.y + 20;
    p1.c = #FF1919;
    p2.c = #FF1919;
    p3.c = #FF1919;
    p4.c = #FF1919;
    this.blocktag = 5;
  }
  
  public void setRotation() {
    if (rotation < 0) {
      rotation = 1;
    }
    switch(this.rotation % 2) {
      case 0:
        p1.x = this.x - 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y + 20;
        p4.x = this.x + 20;
        p4.y = this.y + 20;
        break;
      case 1:
        p1.x = this.x + 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y + 20;
        p4.x = this.x + 20;
        p4.y = this.y - 20;
        break;
    }
  }
  
  public void update() {
    setRotation();
    this.display();
  }
  
}
