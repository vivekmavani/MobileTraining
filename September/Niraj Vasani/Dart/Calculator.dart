// Program to create a Simple calculator
import 'dart:io';

// Function to do the calculation
void calculator(double number1, double number2, var operator) {
  double result;

  switch (operator) {

    // performs addition between numbers
    case '+':
      result = number1 + number2;
      print("$number1 + $number2 = $result");
      break;

    // performs subtraction between numbers
    case '-':
      result = number1 - number2;
      print("$number1 - $number2 = $result");
      break;

    // performs multiplication between numbers
    case '*':
      result = number1 * number2;
      print("$number1 * $number2 = $result");
      break;

    // performs division between numbers
    case '/':
      result = number1 / number2;
      print("$number1 / $number2 = $result");
      break;

    default:
      print("Invalid operator!");
      break;
  }
}

void main() {
  // asking users to enter numbers
  print("Enter first number");
  double number1 = double.parse(stdin.readLineSync()!);

  print("Enter second number");
  double number2 = double.parse(stdin.readLineSync()!);

  // asking users to enter operator
  print("Choose an operator: +, -, *, or /");
  var operator = stdin.readLineSync()!;

  // Calling the calculator function
  calculator(number1, number2, operator);
}
