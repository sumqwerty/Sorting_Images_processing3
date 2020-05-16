class bubble_sort
{
  int[] arr;
  int i;
  bubble_sort(int[] a)
  {
    arr = a;
    i = 0;
  }
  
  void sorting()
  {
    
    if(i<arr.length-1)
    {
      for(int  j=0; j<arr.length-i-1; ++j)
      {
        if (arr[j] > arr[j+1]) 
        {
            // swap arr[j+1] and arr[i] 
            int temp = arr[j]; 
            arr[j] = arr[j+1]; 
            arr[j+1] = temp; 
        }
      }
      i += 1;
    }
    else xdone = true;
  }
  
  void reset()
  {
    i = 0;
  }
  
  void disp(char ax)
  {
    if(ax == 'x')for(int x=0; x<arr.length; x+=1)fx.set(x,arr[x]);
    else if(ax == 'y')for(int y=0; y<arr.length; y+=1)fy.set(y,arr[y]);
    alocateVals();
  } 
}
