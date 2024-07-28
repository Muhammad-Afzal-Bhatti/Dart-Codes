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


//6. Write a Dart program to sort a number list without using function
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

//7. Write a Dart program to sort Name List
void main(){
  int position;
  List names=["Fahad","Qasim","Afzal","Uzair","Wahid","Bilal","Dawood"];
  for(int i=0;i<names.length;i++){
    position=i;
    for(int j=i+1;j<names.length;j++){
      if(names[j].compareTo(names[position])<0)
      position=j;
    }
    String temp=names[i];
    names[i]=names[position];
    names[position]=temp;
  }
  print(names);
}



//8. Sort List of List Using Their String Values
void main() {
  List ListOfLsit = [
    ["Onion", 750, 5, 150],
    ["Potato", 120, 2, 240],
    ["Ginger", 350, 05, 325],
    ["Tomato", 950, 05, 325]
  ];
  for (int i = 0; i < ListOfLsit.length; i++) {
    for (int j = i + 1; j < ListOfLsit.length; j++) {
      if (ListOfLsit[j][0].compareTo(ListOfLsit[i][0]) < 0) {
        var temp = ListOfLsit[i];
        ListOfLsit[i] = ListOfLsit[j];
        ListOfLsit[j] = temp;
      }
    }
  }
  print(ListOfLsit);
}


// Word Count Using Map In String
void main() {
Map charfreq = {};
String s = "AVKXJALFJAAACXKJAJFIJAXLVALFH";
for (int i = 0; i < s.length; i++) {
if (charfreq.containsKey(s[i])) {
charfreq[s[i]] = charfreq[s[i]] + 1;
} else {
charfreq.addAll({s[i]:1});
}
}
print(charfreq);
}


// Binary Number To Decimal Number Conversion
import 'dart:math';

void main() {
  var sum = 0.0;
  String s = "1101110";
  var new1 = s.split("");
  List inT = new1.map(int.parse).toList();
  int Pcount = inT.length - 1;
  for (int i = 0; i < inT.length; i++) {
    sum += pow((inT[i] * 2), Pcount);
    Pcount--;
  }
  print(sum - 1);
}





