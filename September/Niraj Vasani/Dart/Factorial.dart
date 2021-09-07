// Program to print Factorial of given number
import 'dart:io';

// Function to print factorial of a number
void factorial(int number) {
  // Factorial of a number which is 0 greater than 0
  if (number >= 0) {
    int i, fact = 1;

    // Loop to find factorial value of a given number
    for (i = 1; i <= number; i++) {
      fact = fact * i;
    }
    print("\n$fact");
  } else {
    print("Invalid input.");
  }
}

void main() {
  print("Enter an integer number:");
  // taking user input
  int number = int.parse(stdin.readLineSync()!);

  // Calling the factorial function
  factorial(number);
}
