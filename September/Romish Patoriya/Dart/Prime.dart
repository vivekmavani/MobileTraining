//Find Prime number or not.

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  for (int i = 2; i > 1; i--) {
    if ((n % i) == 0 && n != 2) {
      print('No. $n is not a Prime Number.');
      break;
    } else if (i == 2) {
      print('No. $n is a Prime Number.');
    }
  }
}
