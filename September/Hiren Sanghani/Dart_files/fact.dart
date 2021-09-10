import 'dart:io';

void main() {
  print("Enter any number to print factorial of it");
  int n = int.parse(stdin.readLineSync()!);
  int s = 1;

  if (n == 0) {
    print("Factorial of ${n} is 1");
  } else if (n < 0) {
    print("Please enter positive number only");
  } else {
    for (int i = n; i >= 1; i--) {
      s = s * i;
    }
    print("Factorial of ${n} is ${s}");
  }
}
