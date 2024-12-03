import 'student.dart';

void main(List<String> arguments) {
  //print(swapNumber(0));

  print(checkLetters(
      "The quick brown fox jumps over three meter and better than a lazy dog"));

  // Student s1 = Student(numberInteger: 33);
  // s1.printmethod();

  // print(s1.sum(x: 23, y: 3.4));
  print(checkcase("ORAnge"));

  counterLetters("sad");

  coumterlettersList("abcda");
  int x;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int? swapNumber(int? number) {
  // if (number == 1) {
  //   return 0;
  // } else if (number == 0) {
  //   return 1;
  // } else {
  //   print("your number is not 0 or 1");
  // } or:::

  int x = (number == 0) ? 1 : 0;
  return x;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///
bool? checkLetters(String str) {
  String u = str.replaceAll(" ", "");
  String p = u.toLowerCase();
  List list = p.split("");
  // print(list);

  Set set = list.toSet();
  // print(set);
  print(set.length);
  if (set.length == 26) {
    return true;
  } else
    return false;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
String checkcase(String s) {
  int countuppercase = 0;
  int countlowercase = 0;
  for (int i = 0; i < s.length; i++) {
    var letter = s[i].codeUnitAt(0);
    if (letter >= 65 && letter < 97) {
      countuppercase++;
    } else
      countlowercase++;
  }
  String sFinal;
  if (countuppercase >= countlowercase) {
    sFinal = s.toUpperCase();
  } else
    sFinal = s.toLowerCase();

  return sFinal;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// //void counterLetters(String str) {
//   Map<String, int> map = {};
//   str = str.trim();
//   for (int i = 0; i < str.length; i++) {
//     String letter = str[i];
//     if (map.containsKey(letter)) {
//       map[letter] = map[letter]! + 1;
//     }
//   }
//   print(map);
// }

void counterLetters(String str) {
  Map<String, int> map = {};
  str = str.trim();
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];
    if (map.containsKey(letter)) {
      map[letter] = map[letter]! + 1;
    } else {
      map[letter] = 1; // Initialize count to 1
    }
  }
  print(map);
}

///////////////////////////////

void coumterlettersList(String str) {
  List<int> list = List.generate(26, (item) => item = 0);
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];
    int index = letter.codeUnitAt(0) - 97;
    list[index]++;
  }

  for (int i = 0; i < list.length; i++) {
    int counter = list[i];
    String letter = String.fromCharCode(i + 97);
    if (counter > 0) {
      print("$letter: $counter");
    }
  }
}
