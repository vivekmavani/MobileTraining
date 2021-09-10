import 'dart:io';

void main() {
  print("enter any number");
  int? number = int.parse(stdin.readLineSync()!);

  double n = number / 2;

  if ((number == 2) || (number == 3)) {
    print("number is  prime");
  } else {
    for (int i = 2; i < n; i++) {
      if (number % i == 0) {
        print("number is not prime");
        break;
      } else {
        print("number is prime");
      }
    }
  }
}
