import 'dart:convert';
import 'dart:io';
import 'dart:math';

_compare() {
  int a = 2, b = 2;

  if (a == b) {
    print("a and b are same ");
  } else {
    print("a is not equal to b");
  }
}

calGradeFromMark(int mark) {
  if (mark >= 80) {
    print("Got A+");
  } else if (mark >= 75) {
    print("Got A ");
  } else if (mark >= 70) {
    print("Got A- ");
  } else if (mark >= 65) {
    print("Got B");
  } else if (mark >= 60) {
    print("Got B- ");
  } else if (mark >= 55) {
    print("Got C");
  } else if (mark >= 50) {
    print("Got C- ");
  } else if (mark >= 40) {
    print("Got D");
  } else if (mark <= 33) {
    print("Failed ");
  } else {
    print("need to handle");
  }
}

task2() {
  int id = 2049;
  int sum = 0;

  for (int i = 0; i < id; i++) {
    if (id.isEven && i.isEven)
      sum += i;
    else if (id.isOdd && i.isOdd) {
      sum += i;
    }
  }

  print(sum);
}

int input() {
  return int.parse(stdin.readLineSync(encoding: utf8)!);
}

getNInput(int numberOfInput) {
  List<int> result = [];
  for (int i = 0; i < numberOfInput; i++) {
    result.add(input());
  }
  int sum = result.reduce((value, element) => value+element);
  print(" sum $sum  average:${sum/numberOfInput}");

}

// submit link=> mahadicseju@gmail.com
void main(List<String> args) {
  getNInput(10);
}
