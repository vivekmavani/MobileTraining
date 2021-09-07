// Program to check if a number is prime or not
import 'dart:io';

// function to check prime number
void testPrime(int number) {
  int i = 0;
  //defining a flag variable
  bool flag = true;

  // prime number are greater than 1
  if (number > 1) {
    // loop for checking remainder by divisioning starting from 2 to number-1
    for (i = 2; i < number; i++) {
      // check remainder
      if (number % i == 0) {
        // if condition is true, set flag to false
        flag = false;
        // break out of the loop
        break;
      }
    }
  } else {
    print("\n$number is not a prime number.");
  }
  // if flag is true then number is a prime number
  if (flag) {
    print("\n$number is a prime number.");
  } else {
    print(
        "\n$number is not a prime number,\n$i times ${number ~/ i} is $number.");
  }
}

void main() {
  print("Enter any integer number");
  // taking user input
  int? number = int.parse(stdin.readLineSync()!);

  // calling the testPrime function and passing the user input
  testPrime(number);
}
