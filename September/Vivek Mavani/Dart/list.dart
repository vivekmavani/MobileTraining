import 'dart:io'; 
void main(){

    List<int> list = [];
  print("Enter total number");
 int? n = int.parse(stdin.readLineSync()!);

  for(int i =0; i<n;i++)
  {
     print("Enter ${i+1} th number");
    int? n = int.parse(stdin.readLineSync()!);
   list.add(n);
  }
list.forEach((element) => print(element));
}

// void main(){
//   //map
// //    var viv = <String,dynamic>{
// //   'name': "vivek",
// //   'age':22
// // };
// var viv = {
//   'name': "vivek",
//   'age':22
// };
//   viv['weight'] = 80;
//   print(viv);
//   print(viv['name']);
//    print(viv['weight']);

//    //list var vivi = [1,2,3,4,5];
//     List<int> list = [];
//   int i = 0;

//   while(i!=7)
//   {
//     list.add(i+1);
//     i++;
//   }
  
//   for(int i =0; i<7;i++)
//   {
//     for(int j=i+1;j<7;j++)
//     {
//         if(list[i] + list[j] == 5)
//         {
//           print("${list[i]} and ${list[j]},");
//         } 
//     }
//   }
//    list.forEach((element) => print(element));
     
//       for (var prop in list) { 
//       print(prop); 
//    } 
  
// }