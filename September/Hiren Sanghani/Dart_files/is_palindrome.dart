import 'dart:io';

void main() {
  print("Enter the string");
  String? s = stdin.readLineSync()!;

  String rev = "";
  int n = s.length;
  for (int i = n - 1; i >= 0; i--) {
    rev += s[i];
  }
  if (rev == s) {
    print("Entered string is palindrome");
  } else {
    print("Entered string is not palindrome");
  }
}
