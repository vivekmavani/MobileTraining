import 'dart:io';

void main() {
  print("Type how many values you want to enter: ");
  int? input = int.parse(stdin.readLineSync()!);

  if (input == 0 || input == 1) {
    print("Sorry, Enter valid number (>1)");
  } else {
    List<int> UserInput = [];

    print("Enter $input integer numbers: ");

    for (int i = 1; i <= input; i++) {
      UserInput.add(int.parse(stdin.readLineSync()!));
    }
    print("Entered values $UserInput");
    print("Enter the addition value you want from the entered values: ");
    int? addition_value = int.parse(stdin.readLineSync()!);

    bool addition_occur = false;
    for (int i = 0; i < input; i++) {
      for (int j = i + 1; j < input; j++) {
        if (UserInput[i] + UserInput[j] == addition_value) {
          print(
              "Addition of ${UserInput[i]} and ${UserInput[j]} is $addition_value.");
          addition_occur = true;
        }
      }
    }

    if (addition_occur == false) {
      print(
          "No addition occur from given values that could produce output $addition_value");
    }
  }
}
