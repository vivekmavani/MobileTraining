import 'dart:io';

void add(int n)
{
  var num_list = [1,2,3,4,5,6,7];
  var temp;
  for(int i=0; i < (num_list.length); i++)
  {
    for(int next=i+1;next<(num_list.length); next++)
    {
       temp = num_list[i]+num_list[next];
        if(temp==n)
       {
          print("${num_list[i]}" + "," + "${num_list[next]}");
       }
       continue;
    }
   
  }
}
void main()
{
  print("Enter the number:");
  String? s = stdin.readLineSync();
  print("The number you entered is: ${s}");
  if (s != null)
  {
    int num = int.parse(s);
    add(num);
  }
}
