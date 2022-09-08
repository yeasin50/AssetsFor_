import 'dart:convert';
import 'dart:io';

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

main(List<String> args) {
  String? input = stdin.readLineSync(encoding: utf8);

  if (input != null) {
    if (input.contains(RegExp(r'[A-Z]'))) {
      print("upper case");
    } else if (input.contains(RegExp(r'[a-z]'))) {
      print("small case");
    }
  }
}
