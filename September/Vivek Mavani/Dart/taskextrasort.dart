void main() {
  
  var list = [0,1,0,1,0,0,1,1,1,0];
// for(int i =0; i<list.length-1;i++)
//   {
//     for(int j=0;j<list.length-i-1;j++)
//     {
//         if(list[j] > list[j+1])
//         {
//           int c= list[j] ;
//           list[j] = list[j+1];
//           list[j+1] = c;
//         } 
//     }
//   }

// list.sort();

  int count =  list.length-1;
  int ty = 0;
  for(int ty = 0; ty<count;list[ty] != 1? ty++:ty)
  {
     if (list[ty] == 1) {
           
                list[count] = list[count]+ list[ty];
                list[ty] = list[count]-list[ty];
                list[count] = list[count]-list[ty];
                count--;
            } 
  }
 print(list);
 
}

