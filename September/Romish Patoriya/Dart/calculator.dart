import 'dart:io';

class Calculator {
  add(var x, var y) {
    return x + y;
  }

  sub(var x, var y) {
    return x - y;
  }

  mul(var x, var y) {
    return x * y;
  }

  div(var x, var y) {
    return x / y;
  }

  modulo(var x, var y) {
    return x % y;
  }

  sqr(var x) {
    return x * x;
  }

  power(var x, var y) {
    var v = x;
    for (int i = 1; i < y; i++) {
      v = v * x;
    }
  }

  sqroot(var x) {
    for (int i = 1; i < x / 2; i++) {
      if (x / i == i) {
        return i;
      }
    }
  }
}

void main() {
  Calculator c = Calculator();
  print(
      'Select Operation:\n 1.Addition\n 2.Subtraction\n 3.Multiplication\n 4.Division\n 5.find modulo\n 6.Square\n 7.power\n 8.Square Root\n ');
  int n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      print('Enter the 2 no.:');
      var x = int.parse(stdin.readLineSync()!),
          y = int.parse(stdin.readLineSync()!);
      print('Addition is : ${c.add(x, y)}');
      break;
    case 2:
      print('Enter the 2 no.:');
      var x = int.parse(stdin.readLineSync()!),
          y = int.parse(stdin.readLineSync()!);
      print('Subtraction is : ${c.sub(x, y)}');
      break;
    case 3:
      print('Enter the 2 no.:');
      var x = int.parse(stdin.readLineSync()!),
          y = int.parse(stdin.readLineSync()!);
      print('Multiplication is : ${c.mul(x, y)}');
      break;
    case 4:
      print('Enter the 2 no.:');
      var x = int.parse(stdin.readLineSync()!),
          y = int.parse(stdin.readLineSync()!);
      print('Division is : ${c.div(x, y)}');
      break;
    case 5:
      print('Enter the 2 no.:');
      var x = int.parse(stdin.readLineSync()!),
          y = int.parse(stdin.readLineSync()!);
      print('Modulo is : ${c.modulo(x, y)}');
      break;
    case 6:
      print('Enter the 1 no.:');
      var x = int.parse(stdin.readLineSync()!);
      print('Square is : ${c.sqr(x)}');
      break;
    case 7:
      print('Enter the 2 no.:');
      var x = int.parse(stdin.readLineSync()!),
          y = int.parse(stdin.readLineSync()!);
      print('Power is ${c.power(x, y)}');
      break;
    case 8:
      print('Enter the 1 no.:');
      int x = int.parse(stdin.readLineSync()!);
      print('Square Root is : ${c.sqroot(x)}');
      break;
    default:
      print("Wrong input");
  }
}
