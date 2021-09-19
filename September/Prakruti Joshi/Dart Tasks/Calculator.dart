// 5.Write a logic to create a Simple calculator.

 import 'dart:io';

double calculator(double n1,double n2, int op)
{
  switch (op) {
    case 1 :
      return n1+n2;
    
    case 2:
      return n1-n2;

    case 3:
      return n1*n2;

    case 4:
      return n1/n2;

    default:
      print("Please Enter Correct Operator");
      return 0;
  }
}
 void main()
 {
    print("Enter First number:");
    double? n1 = double.parse(stdin.readLineSync()!);
    print("Enter second number:");
    double? n2 = double.parse(stdin.readLineSync()!);
    print("1 -> Addition \n2 -> Substraction \n3 -> Multiplication \n4 -> Division");
    int? op = int.parse(stdin.readLineSync()!);
    double result= calculator(n1,n2,op);
    print("The Result is ${result}");
 }