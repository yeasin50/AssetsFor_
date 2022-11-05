import 'dart:io';

int readInput() {
  int x = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  return x;
}

void question1() {
  int A = readInput();
  int B = readInput();

  final X = A + B;
  print("X = $X");
}

void question2() {
  int A = readInput();
  int B = readInput();
  int C = readInput();
  int D = readInput();

  final result = A * B - C * D;
  stdout.write("DIFERENCE = $result");
}

void question3() {
  int x = readInput();

  int counter = 0;

  while (x > 0) {
    x = x ~/ 10;
    counter++;
  }

  print("NUmber of digits: $counter");
}

void main(List<String> args) {
  // question1();
  // question2();
  question3();
}
