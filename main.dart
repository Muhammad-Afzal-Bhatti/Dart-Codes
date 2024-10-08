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


// Write a dart program to make a rock paper and scissor game
import 'dart:io';
import 'dart:math';
void GameRockPaperSiser() {
  stdout.write("Enter the number of points you want to play: ");
  int numberPoints = int.parse(stdin.readLineSync()!);
  String first = " ";
  int firstcount, computercount, tiepoints = 0;
  firstcount = 0;
  computercount = 0;
  List gameItems = ["Rock", "Paper", "Scissor"];
  int n = 1;
  while (n <= numberPoints) {
    print("\n1: Rock\n2: Paper\n3: Scissor");
    stdout.write("Select Any Option: ");
    int Case1 = int.parse(stdin.readLineSync()!);
    switch (Case1) {
      case 1:
        first = "Rock";
        break;
      case 2:
        first = "Paper";
        break;
      case 3:
        first = "Scissor";
        break;
      default:
        print("Inavlid option");
        break;
    }
    var secondRan = Random().nextInt(gameItems.length);
    stdout.write("Computer select: ${gameItems[secondRan]}");
    print("");
    if (first == gameItems[secondRan]) {
      tiepoints++;
      print("Match Tie No Point");
      stdout.write("Exit The Game(Y\\N)");
      String optionInput = stdin.readLineSync()!;
      var optionCasing = optionInput.toUpperCase();
      while (optionCasing != "Y" && optionCasing != "N") {
        stdout.write("Invalid Option select again: ");
        optionInput = stdin.readLineSync()!;
        optionCasing = optionInput.toUpperCase();
        if (optionCasing == "Y" || optionCasing == "N") break;
      }
      if (optionCasing == "Y")
        break;
      else {
        print("Game continue");
      }
    } else if (first == "Rock" && "Paper" == gameItems[secondRan]) {
      computercount += 1;
      print("Computer win one point");
    } else if (first == "Paper" && "Scissor" == gameItems[secondRan]) {
      computercount += 1;
      print("Computer win one point");
    } else if (first == "Scissor" && "Rock" == gameItems[secondRan]) {
      computercount += 1;
      print("Computer win one point");
    } else if (first == "Paper" && "Rock" == gameItems[secondRan]) {
      firstcount += 1;
      print("You win one point");
    } else if (first == "Scissor" && "Paper" == gameItems[secondRan]) {
      firstcount += 1;
      print("You win one point");
    } else if (first == "Rock" && "Scissor" == gameItems[secondRan]) {
      firstcount += 1;
      print("You win one point");
    }

    n += 1;
  }
  if (firstcount > computercount)
    print(
        "You win the match with ${numberPoints - tiepoints} out of $firstcount points and $tiepoints are tie");
  else if (firstcount < computercount) {
    print(
        "Computer win the match with ${numberPoints - tiepoints} out of $computercount points and $tiepoints are tie");
  } else if (firstcount == computercount)
    print("Final result both points are same");
}

void main() {
  GameRockPaperSiser();
}


// Write a Dart Program To Remove Duplicate Numbers From List
void main() {
List n=[2,5,2,2,4,5,3,6,3];
List duplicate=[];
for(int i=0;i<n.length;i++){
  bool isdup=true;
  for(int j=0;j<duplicate.length;j++){
    if(n[i]==duplicate[j])
    isdup=false;
  }
  if(isdup)
  duplicate.add(n[i]);
}
print(duplicate);

}

