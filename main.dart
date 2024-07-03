// Write a Dart Program To Add Two Numbers
import 'dart:io';
void main() {
  print("Enter First Number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int num2 = int.parse(stdin.readLineSync()!);
  print("The sum is ${num1 + num2}");
}
