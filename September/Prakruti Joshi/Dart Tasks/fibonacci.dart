// 3.Write a logic to print Fibonacci Series of input number .

import 'dart:io';

void fibonacci(int n)
{
  int f=0,s=1,t;
  print(f);
  print(s);
  for(int i=2;i<n;i++)
  {
    t=f+s;
    print(t);
    f=s;
    s=t;
  }
}
void main()
{
  print("Enter the number:");
  int? num = int.parse(stdin.readLineSync()!);
  print("The fibonacci Series upto ${num}th place is ");
  fibonacci(num);
}

