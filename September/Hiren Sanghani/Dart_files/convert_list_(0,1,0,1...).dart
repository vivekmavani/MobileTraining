void main() 
{
  
  var list = [0,1,1,0,1,0,1,0,0,1,1,0,1,1,0,1,1,0,0,0,1];
  int i=0,temp=0, n=list.length,j=n-1;
  
  int change()
  {
    if(list[i] == 1)
    { 
    return 0;
    }
    else
    {
    return 1;
    }

  }
  
   for(i=0; i<=n-2; i++)
   {
     if(list[i]==list[i+1])
     {
       list[i+1] = change();
     }
     list.add(list[i]);
   }
   
  print(list);
}