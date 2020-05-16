// PRESS 'a' OR 'A' TO JUMBLE AND 's' OR 'S' FOR SELECTION SORT
// PRESS 'k' OR 'K' TO JUMBLE AND 'l' OR 'L' FOR BUBBLE S0RT


PImage image;
int clr = 5;
IntList fx = new IntList();
IntList fy = new IntList();
int[] intrX;
int[] intrY;
ArrayList<pix> p = new ArrayList<pix>();
selection_sort sx,sy;
bubble_sort bx,by;
boolean srt_S = false;
boolean srt_B = false;
boolean xdone = false;
boolean xy_siml = false;
void setup()
{
  image = loadImage("KL.png");
  size(750,720);
  
  for(int x=0; x<width; x+=clr)fx.append(x);
  for(int y=0; y<height; y+=clr)fy.append(y);
  
  intrX = new int[fx.size()];
  intrY = new int[fy.size()];
  
  //println(intrX.length,fx.size());
  image.loadPixels();
  for(int x=0; x<intrX.length; x+=1)intrX[x] = fx.get(x);
  for(int y=0; y<intrY.length; y+=1)intrY[y] = fy.get(y);
  
  for(int x=0; x<fx.size(); x+=1)
  {
    for(int y=0; y<fy.size(); y+=1)
    {
      color c = image.pixels[fx.get(x)+fy.get(y)*image.width];
      pix temp_p = new pix(p.size(),c,fx.get(x),fy.get(y),clr);
      p.add(temp_p);
    }
  } 
  
}

void alocateVals()
{
  for(int i=0, xp=0, yp=0; i<p.size(); ++i)
  {
    p.get(i).setpos(fx.get(xp),fy.get(yp));
    yp+=1;
    if(yp >= fy.size())
    {
      yp = 0;
      xp += 1;
    }
  }
}


void jumbleS()
{
  /*for(int i=0; i<p.size(); i+=1)
  {
    p.get(i).setpos(int(random(width)),int(random(height))); 
  }*/
  fx.shuffle();
  for(int x=0; x<intrX.length; x+=1)intrX[x] = fx.get(x);
  sx = new selection_sort(intrX);
  alocateVals();
  
  fy.shuffle();
  for(int y=0; y<intrY.length; y+=1)intrY[y] = fy.get(y);
  sy = new selection_sort(intrY);

  alocateVals();
}

void jumbleB()
{
  fx.shuffle();
  for(int x=0; x<intrX.length; x+=1)intrX[x] = fx.get(x);
  bx = new bubble_sort(intrX);
  alocateVals();
  
  fy.shuffle();
  for(int y=0; y<intrY.length; y+=1)intrY[y] = fy.get(y);
  by = new bubble_sort(intrY);

  alocateVals();
}

void keyPressed()
{
  if(key == 'x' || key == 'X')
  {
    xy_siml = !xy_siml;
  }
  else if(key == 'a' || key == 'A')// jumbling for Selection sort
  {
    xdone = false;
    jumbleS();
    
  }
  else if(key == 's' || key == 'S')// sorting for selection sort
  {
    srt_S = !srt_S;
    srt_B = false;
  }
  
  else if(key == 'k' || key == 'K')// jumbling for bubble sort
  {
    xdone = false;
    jumbleB();
    
  }
  else if(key == 'l' || key == 'L')//  sorting for bubble sort
  {
    srt_B = !srt_B;
    srt_S = false;
  }
  else if(key == 'c' || key == 'C')
  {
    xdone = false;
  }
  
}
void draw()
{
  background(0);
  if(xy_siml)
  {
    if(srt_B)
    {
      bx.disp('x');
      bx.sorting();
      by.disp('y');
      by.sorting();
    }
    else if(srt_S)
    {
      sx.disp('x');
      sx.sorting();
      sy.disp('y');
      sy.sorting();
    }
  }
  
  else
  {
    if(srt_B)
    {
      bx.disp('x');
      bx.sorting();
      if(xdone)
      {
        by.disp('y');
        by.sorting();
      }
      
    }
    else if(srt_S)
    {
      sx.disp('x');
      sx.sorting();
      if(xdone)
      {
        sy.disp('y');
        sy.sorting();
      }
      
    }
  }
  
  //println(fx);
  for(int i=0; i<p.size(); ++i)
  {
    p.get(i).drw();
    ////p.get(i).prtno();
  } 
}
