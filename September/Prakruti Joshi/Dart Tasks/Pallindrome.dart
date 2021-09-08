// 2.Write a logic to check if input string is Palindrome or not.

import 'dart:io';

void main()
{
  print("Enter a String:");
  String? str = stdin.readLineSync();
  String? rev = str!.split('').reversed.join('');
  if(str==rev)
  {
    print("It is a Palindrome");
  }
  else
  {
    print("It is not a Palindrome");
  } 
}