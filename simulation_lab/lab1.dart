import 'dart:convert';
import 'dart:io';
import 'dart:math';

// Check if the number is even or odd.

checkEvenOdd() {
  String? data = stdin.readLineSync(encoding: utf8);

  try {
    int number = int.parse(data!);

    if (number.isEven) {
      print("$number number is Even ");
    } else {
      print("$number number is Odd");
    }
  } catch (e) {
    print(e);
  }
  print(data);
}

//  Find the largest number.

void swapData() {
  try {
    int x = int.parse(stdin.readLineSync(encoding: utf8)!);
    int y = int.parse(stdin.readLineSync(encoding: utf8)!);

    print("x  $x y $y");

    x = x + y;
    y = x - y;
    x = x - y;

    print("x  $x y $y");
  } catch (e) {
    print(e);
  }
}

/// check capital and small case
checkLetter() {
  String? input = stdin.readLineSync(encoding: utf8);

  if (input != null) {
    if (input.contains(RegExp(r'[A-Z]'))) {
      print("upper case");
    } else if (input.contains(RegExp(r'[a-z]'))) {
      print("small case");
    }
  }
}

// find Large number among N
findLargeNumber() {
  String? data = stdin.readLineSync(encoding: utf8);

  List<int> dataset;

  try {
    dataset =
        data!.split(" ").toList().map((e) => int.tryParse(e) ?? 0).toList();
    print(dataset.reduce(max));
  } catch (e) {
    print(e);
  }
}

main(List<String> args) {}
