// Write a Dart Program To Add Two Numbers
import 'dart:io';
void main() {
  print("Enter First Number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int num2 = int.parse(stdin.readLineSync()!);
  print("The sum is ${num1 + num2}");
}


// Write a program to check if given character is digit
void main() {
  String character = "6";
  if (character.codeUnitAt(0) >= 48 && character.codeUnitAt(0) <= 57)
    print("$character is a digit");
  else {
    print("$character is not a digit");
  }
}
