import 'dart:io';
import 'dart:math' as math;

/// Circle
void area(double radius) {
  final result = math.pi * math.pow(radius, 2);

  print("A=${result.toStringAsFixed(4)}");
}

BigInt sqByN(int n) => BigInt.from(math.pow(n, n * 2));

void powerTask(int start, int end) {
  for (int i = start; i <= end; i++) {
    print("number: $i value:${sqByN(i)}");
  }
}

///* number: 2 value: 16
/// user i = 2;
///  result  = pow(2,2*2) => 16
///

int readInput() => int.tryParse(stdin.readLineSync() ?? "") ?? 0;

void getAdjacent(int a, int c) {
  final x = math.sqrt(math.pow(a, 2) - math.pow(c, 2));
  print("base $x");
}

void main(List<String> args) {
  stdout.write("Enter a: ");
  int a = readInput();
  stdout.write("Enter c: ");
  int c = readInput();
  getAdjacent(a, c);
}
