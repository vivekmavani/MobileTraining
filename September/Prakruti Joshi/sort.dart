class sort
{
  
  List BubbleSort(List sort_list)
  {
    for (int i = 0; i < sort_list.length - 1; i++) 
    {
      for (int j = 0; j < sort_list.length - i - 1; j++) 
      {
        if (sort_list[j] > sort_list[j + 1]) 
        {
          int c = sort_list[j];
          sort_list[j] = sort_list[j + 1];
          sort_list[j + 1] = c;
        }
      }
    }
    return sort_list;
  }

  List QuickSort(List sort_list, int start, int end) 
  {
    if (start < end)
    {
      int i= partition(sort_list,start,end);
      QuickSort(sort_list,start,i-1);
      QuickSort(sort_list,i+1,end);
    }
    return sort_list;
  }

  int partition(List sort_list, int start, int end) 
  {
    int pivot = sort_list[end];
    int i = (start - 1);

    for (int j=start;j<=end-1;j++) 
    {
      if (sort_list[j] < pivot) 
      {
        i++;
        swap(sort_list,i,j);
      }
    }
    swap(sort_list,i+1,end);
    return (i + 1);
  }

  void swap(List sort_list, int i, int j) 
  {
    int c = sort_list[i];
    sort_list[i] = sort_list[j];
    sort_list[j] = c;
  }

}

void main()
{
  var sort_list=[5,8,2,6,1,9,7,0];
  sort s=new sort();
  print("The original list: ${sort_list}");
  List btemp=s.BubbleSort(sort_list);
  print("The sorted list using BubbleSort:${btemp}");
  List qtemp=s.QuickSort(sort_list,0,sort_list.length-1);
  print("The sorted list using QuickSort:${qtemp}");
}
