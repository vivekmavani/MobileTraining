
class Sum
{
   
  void Is_sum_x(List list, int x)
  {
    int n =list.length;
    print("The values which sum is ${x} are :");

    for(int i=0; i<n-1 ; i++)
    {
      int min = i;
      for(int j=i+1 ; j<n ; j++)
      {
        if((list[i] + list[j]) == x)
        {
          print("${list[i]} , ${list[j]}");
        }
      }
     }
  }
}

void main()
{
  
  Sum s = new Sum();
  s.Is_sum_x([1,2,3,4,5,6,7,8,9] , 10);
  
}