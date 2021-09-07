import 'dart:io';
import 'dart:math';

void main() {
  print('1.Write a logic to check if input number is prime.' +
      '\n' +
      '2.Write a logic to check if input string is Palindrome or not.' +
      '\n' +
      '3.Write a logic to print Fibonacci Series of input number .' +
      '\n' +
      '4.Write a logic to print Factorial of given number.' +
      '\n' +
      '5.Write a logic to create a Simple calculator.' +
      '\n' +
      'Enter given number');
  int? n = int.parse(stdin.readLineSync()!);
  gotoswichcase(n);
}

void gotoswichcase(int n) {
  var number;
  switch (n) {
    case 1:
      print('1.Write a logic to check if input number is prime.' +
          '\n' +
          'Enter Any Number');
      number = int.parse(stdin.readLineSync()!);
      primenumber(number);
      main();
      break;
    case 2:
      print('2.Write a logic to check if input string is Palindrome or not.' +
          '\n' +
          'Enter Any String');
      number = stdin.readLineSync();
      palindrome(number);
      main();
      break;
    case 3:
      print('3.Write a logic to print Fibonacci Series of input number .' +
          '\n' +
          'Enter Any Number');
      number = int.parse(stdin.readLineSync()!);
      fibonacci(number);
      main();
      break;
    case 4:
      print('4.Write a logic to print Factorial of given number.' +
          '\n' +
          'Enter Any Number');
      number = int.parse(stdin.readLineSync()!);
      factorial(number);
      main();
      break;
    case 5:
      print('Write a logic to create a Simple calculator.');
      calculator();
      main();
      break;
    default:
      print('Invalid input');
      main();
      break;
  }
}

void primenumber(int number) {
  int m = (number / 2).round();
  int flag = 0;

  if (number == 0 || number == 1) {
    print('$number is not prime number');
  } else {
    for (int i = 2; i < m; i++) {
      if (number % i == 0) {
        print('$number is not prime number');
        flag = 1;
        break;
      }
    }
    if (flag == 0) {
      print('$number is prime number');
    }
  }
}

void palindrome(String s) {
  String ms = "";
  int length = s.length;
  for (int i = length - 1; i >= 0; i--) {
    ms = ms + s[i];
  }
  ms == s ? print('string is Palindrome') : print('string is not Palindrome');
}

void fibonacci(int number) {
  int a = 0, b = 1;
  if (number == 0) {
    print('Enter above 0');
  } else if (number == 1) {
    print('0');
  } else {
    stdout.write('0, 1, ');
    for (int i = 3; i <= number; i++) {
      int c = a + b;
      a = b;
      b = c;
      stdout.write('$c, ');
    }
  }
}

void factorial(int number) {
  if (number == 0 || number == 1) {
    print(1);
  } else {
    double mlt = 1;
    for (int i = 1; i <= number; i++) {
      mlt = mlt * i;
    }
    print(mlt);
  }
}

void calculator() {
  print('Enter First Number : ');
  double? first = double.parse(stdin.readLineSync()!);
  print('Enter Second Number : ');
  double? second = double.parse(stdin.readLineSync()!);
  var calOpration = CalOpration(first: first, second: second);
  print('+ add' +
      '\n' +
      '* multiplication.' +
      '\n' +
      '/ division.' +
      '\n' +
      '- subtract' +
      '\n' +
      '^ expontentiate' +
      '\n' +
      'exit' +
      '\n' +
      'Enter given simbol');
  var opetor = stdin.readLineSync();
  switch (opetor) {
    case '+':
      print('$first  +  $second = ${calOpration.add()}');
      calculator();
      break;
    case '-':
      print('$first  -  $second = ${calOpration.sub()}');
      calculator();
      break;
    case '*':
      print('$first  *  $second = ${calOpration.mult()}');
      calculator();
      break;
    case '/':
      print('$first  /  $second = ${calOpration.div()}');
      calculator();
      break;
    case '^':
      print('$first  ^  $second = ${calOpration.expo()}.');
      calculator();
      break;
    case 'exit':
      exit(0);
      break;
    default:
      print('Invalid input');
      calculator();
      break;
  }
}

class CalOpration {
  dynamic first;
  dynamic second;
  CalOpration({this.first, this.second});

  double add() => first + second;

  double sub() => first - second;

  double mult() => first * second;

  double div() => first / second;

  double expo() => pow(first, second).toDouble();
}
