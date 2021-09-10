void main() 
{
  var list = [0,1,1,0,1,0,1,0,0,1,1,0,1,1,0,1,1,0,0,0,1];
  int i=0,j=0,temp=0, n=list.length;
  
   for(i=0; i<=n-1; i++)
    {
      for(j=0; j<n-i-1;j++)
      {
        if(list[j] < list[j+1])
        {
          temp = list[j];
          list[j] = list[j+1];
          list[j+1] = temp;  
        }
        
      }
           print(list[j]);
          
    }    
 
}