//1. Write a Dart Program To Add Two Numbers
import 'dart:io';
void main() {
  print("Enter First Number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number");
  int num2 = int.parse(stdin.readLineSync()!);
  print("The sum is ${num1 + num2}");
}


//2. Write a dart program to find sum of N numbers
import 'dart:io';

void main() {
  int sum = 0;
  int x = 1;
  print("Enter a number to find n number sum");
  int n = int.parse(stdin.readLineSync()!);
  while (x <= n) {
    sum = sum + x;
    x++;
  }
  x--;
  print("The sum of $x numbers is $sum");
}


//3. Write a program to check if given character is digit
void main() {
  String character = "6";
  if (character.codeUnitAt(0) >= 48 && character.codeUnitAt(0) <= 57)
    print("$character is a digit");
  else {
    print("$character is not a digit");
  }
}


//4. Write A Dart Program To Perform Binray Search
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


//5. Write a dart program to check weather a give list is sorted or not
void main() {
  List<int> numbers = [1, 2, 3, 5];
  bool isSorted = true;
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] > numbers[i + 1]) {
      isSorted = false;
      break;
    }
  }

  if (isSorted) {
    print("The list is sorted");
  } else {
    print("The list is not sorted");
  }
}
}


//6. Write a Dart program to sort a list without using function
void main() {
  List numbers = [1, 4, 2, 9, 3, 7, 5, 14];
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  print(numbers);
}



//6. Sort List of List Using Their String Values
String index = " ";
void main() {
  List ListOfLsit = [
    ["Onion", 750, 5, 150],
    ["Potato", 120, 2, 240],
    ["Ginger", 650, 05, 325],
    ["Tomato", 650, 05, 325]
  ];
  for (int i = 0; i < ListOfLsit.length; i++) {
    index = ListOfLsit[i][0];
    for (int j = i + 1; j < ListOfLsit.length; j++) {
      if (ListOfLsit[j][0].compareTo(index) < 0) {
        var temp = ListOfLsit[i];
        ListOfLsit[i] = ListOfLsit[j];
        ListOfLsit[j] = temp;
      }
    }
  }
  print(ListOfLsit);
}





