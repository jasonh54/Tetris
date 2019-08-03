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
    p1.c = #00e5e5;
    p2.c = #00e5e5;
    p3.c = #00e5e5;
    p4.c = #00e5e5;
  }
  
  public void setRotation() {
    switch(this.rotation % 2) {
      case 0:
        p1.x = this.x;
        p1.y = this.y - 20;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x;
        p3.y = this.y + 20;
        p4.x = this.x;
        p4.y = this.y + 40;
        break;
      case 1:
        p1.x = this.x - 20;
        p1.y = this.y;
        p2.x = this.x;
        p2.y = this.y;
        p3.x = this.x + 20;
        p3.y = this.y;
        p4.x = this.x + 40;
        p4.y = this.y;
        break;
    }
  }
  
  public void update() {
    if (rotation < 0) {
      rotation = 1;
    }
    setRotation();
    this.display();
  }
  
}
