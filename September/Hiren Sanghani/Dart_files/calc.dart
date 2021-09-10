import 'dart:io';

void main() {
  print("enter first number");
  double? n1 = double.parse(stdin.readLineSync()!);
  print("enter second number");
  double? n2 = double.parse(stdin.readLineSync()!);

  print("Select what you want to perform");
  print("1. Summation, 2. Difference, 3. Multiplication, 4.Division");

  int? n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      print("Summation is ${n1 + n2}");
      break;
    case 2:
      print("Difference. is ${n1 - n2}");
      break;
    case 3:
      print("Multiplication is ${n1 * n2}");
      break;
    case 4:
      print("Division is ${n1 / n2}");
      break;
    default:
      print("Please select valid option");
  }
}
