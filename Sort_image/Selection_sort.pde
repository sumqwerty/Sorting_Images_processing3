class selection_sort
{
  int[] arr;
  int i;
  selection_sort(int[] a)
  {
    arr = a;
    i = 0;
  }
  
  void reset()
  {
    i=0;
  }
  
  void sorting()
  {
    if(i < arr.length - 1)
    {
      //println(i);
      int min_indx = i;
      for(int j=i+1; j < arr.length; ++j)
      {
        if (arr[j] < arr[min_indx])
        {
          min_indx = j;
        }
        
      }
      fill(255,0,0);
      rect(arr[i],0,2,2);
      int temp = arr[i];
      arr[i] = arr[min_indx];
      arr[min_indx] = temp;
      i += 1;
    }
    else xdone = true;
  }
  
  void disp(char ax)
  {
    if(ax == 'x')for(int x=0; x<arr.length; x+=1)fx.set(x,arr[x]);
    else if(ax == 'y')for(int y=0; y<arr.length; y+=1)fy.set(y,arr[y]);
    alocateVals();
  }
  
  
  


}
