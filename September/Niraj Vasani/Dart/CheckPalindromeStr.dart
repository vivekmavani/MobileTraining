// Program to check if input string is Palindrome or not
import 'dart:io';

// Function to check Palindrome string
void checkPalindrom(var inputString) {
  int len = inputString.length;
  // defining a flag variable
  bool flag = true;

  // Loop for checking the first half with the second half of a string
  for (int i = 0; i <= len ~/ 2; i++) {
    // Checking first hafl with second half of string
    if (inputString[i] != inputString[len - 1 - i]) {
      // If condition is true set flage variable to false
      flag = false;
      // Break out of the Loop
      break;
    }
  }
  // If flage is true then string is a palindrome
  if (flag) {
    print("\nGiven string is palindrome");
  } else {
    print("\nGiven string is not a palindrome");
  }
}

void main() {
  print("Enter a string:");
  // Taking user input
  var inputString = stdin.readLineSync()!;

  // Calling the function and pasing the string and removing symbols and white spaces
  checkPalindrom(
      inputString.toLowerCase().replaceAll(new RegExp(r"(?:_|[^\w])"), ""));
}
