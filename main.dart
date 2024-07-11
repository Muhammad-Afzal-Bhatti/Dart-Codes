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


// Write A Dart Program To Perform Binray Search
import 'dart:io';
void main() {
  print("Enter a number that you want to search");
  int name = int.parse(stdin.readLineSync()!);
  List numbers = [2, 9, 13, 24, 29, 30, 35, 48, 50, 62, 67, 72, 84, 95];
  int si = 0;
  int ei = numbers.length - 1;
  int mi = 0;
  while (si <= ei) {
    mi = (si + ei) ~/ 2;
    if (name == numbers[mi]) {
      print("Found at index $mi");
      break;
    } else if (name > numbers[mi]) {
      si = mi + 1;
    } else {
      ei = mi - 1;
    }
    if (si > ei) {
      print("Number Not Found");
    }
  }
}


