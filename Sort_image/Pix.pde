class pix
{
  int no;
  color col;
  int x;
  int y;
  int sz;
  pix(int no_, color c, int x_, int y_, int sz_)
  {
    no = no_;
    col = c;
    x = x_;
    y = y_;
    sz = sz_;
  }
  
  void prtno()
  {
    println(no);
  }
  
  void drw()
  {
    noStroke();
    fill(col);
    //circle(x,y,sz);
    rect(x,y,sz,sz);
  }
  
  void setpos(int x_, int y_)
  {
    x = x_;
    y = y_;
  }
  
}
