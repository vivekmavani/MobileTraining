//Find Fibonacci Series
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  print(f(n));
}

int f(int n) {
  if (n <= 1) {
    return n;
  }
  return f(n - 1) + f(n - 2);
}
