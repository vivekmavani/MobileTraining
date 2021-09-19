// 4.Write a logic to print Factorial of given number.
import 'dart:io';

int factorial(int n)
{
  if(n==1)
  {
    return 1;
  }
  return n*factorial(n-1);
}
void main()
{
  print("Enter the number:");
  int? num = int.parse(stdin.readLineSync()!);
  print("The Factorial of ${num} is ${factorial(num)}");
}