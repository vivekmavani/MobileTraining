//Find Factorial 
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!), j = 1;
  for (int i = 1; i <= n; i++) {
    j = j * i;
  }
  print('$n Factorial is : $j');
}
