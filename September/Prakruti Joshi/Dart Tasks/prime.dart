//1.Write a logic to check if input number is prime.

import 'dart:io';
bool check(int num)
{
  if(num<=1)
  {
    return false;
  }

  for(int i=2;i<=num/2;i++)
  {
    if(num%i==0)
    {
      return false;
    }
  }
  return true;
}

void main()
{
  print("Enter the number:");
  int? num = int.parse(stdin.readLineSync()!);
  if(check(num))
  {
    print("${num} is a prime number");
  }
  else
  {
    print("${num} is not a prime number");
  }
}