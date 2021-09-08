// Program to print Fibonacci Series of input number
import 'dart:io';

// Function to check fibonacci number
void fibonacci(int number) {
  // if 2 or more numbers are asked
  if (number > 1) {
    // to print first two numbers
    int n1 = 0, n2 = 1, n3;
    print("\n$n1");
    print(n2);

    // Loop to print remaining numbers
    for (int i = 3; i <= number; i++) {
      n3 = n1 + n2;
      print(n3);
      n1 = n2;
      n2 = n3;
    }
  }
  // If one number is asked
  else if (number == 1) {
    print("\n0");
  } else {
    print("Invalid input.");
  }
}

void main() {
  print("How many Fibonacci numbers you want to print:");
  // taking user input
  int number = int.parse(stdin.readLineSync()!);

  // calling the fibonacci function and passing the user input
  fibonacci(number);
}
