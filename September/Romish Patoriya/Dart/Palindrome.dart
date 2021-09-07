//Find String is palindrome or not.
import 'dart:io';

void main() {
  bool b = true;
  String? s = stdin.readLineSync()!;
  for (int i = 0, l = s.length - 1; i < l;) {
    if (s[i] == s[l]) {
      i++;
      l--;
    } else {
      b = false;
      break;
    }
  }
  if (b) {
    print('String is Palindrome.');
  } else {
    print('String is not Palindrome.');
  }
}
