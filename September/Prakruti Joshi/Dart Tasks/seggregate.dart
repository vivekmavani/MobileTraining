void seggregate()
{
   var binary_list = [0,1,0,1,0,0,1,1,1,0];
   var new_list= [];
   int count = 0;
  print("Original List : ${binary_list}");
   for(int i=0; i<binary_list.length;i++)
   {
     if(binary_list[i]==0)
     {
       count++;
     }
   }
   for(int i=0;i<count;i++)
   {
     binary_list[i]=0;
   }
   for(int i=count;i<binary_list.length;i++)
   {
     binary_list[i]=1;
   }
  for(int i=0;i<binary_list.length;i++)
  {
    new_list.add(binary_list[i]);
  }
  print("Seggregated List : ${new_list}");
}

void main()
{
  seggregate();
}