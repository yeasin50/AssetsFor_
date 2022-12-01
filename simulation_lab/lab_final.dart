import 'dart:io';
import 'dart:math';

int readInput() {
  int x = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  return x;
}

void question1() {
  int n = readInput();
  List<int> data = [];
  for (int i = 0; i < n; i++) {
    data.add(readInput());
  }

  //find  max
  final int maxNumber = data.reduce(max);

  print("max number is $maxNumber");
}

//second  largest
void question2() {
  int n = readInput();
  List<int> data = [];
  for (int i = 0; i < n; i++) {
    data.add(readInput());
  }
  //find  max
  // final int maxNumber = data.reduce(max);
  // data.remove(maxNumber);

  // final int secondLargest = data.reduce(max);
  data.sort();
  final int secondLargest = data[data.length - 2];

  print("Second largest number is $secondLargest");
}

//frequency number
void question3() {
  String? input = stdin.readLineSync();
  if (input == null) return;
  List<int> data = input.split(",").map((e) => int.tryParse(e) ?? 0).toList();

  print(data);

  final dataSet = data.toSet();

  print(dataSet);
  for (int j = 0; j < dataSet.length; j++) {
    final frequency =
        data.where((element) => element == dataSet.elementAt(j)).length;
    print("Frequency of ${dataSet.elementAt(j)} = $frequency");
  }
}

void question4() {
  stdout.write("number of input: ");
  int n = readInput();
  stdout.write("Input array elements:\n");
  List<int> data = [];
  for (int j = 0; j < n; j++) {
    data.add(readInput());
  }
  // String? input = stdin.readLineSync();
  // if (input == null) return;

  // input.split(",").map((e) => int.tryParse(e) ?? 0).toList();

  stdout.write("Input element to insert: ");
  int newData = readInput();
  stdout.write("Input position where to insert: ");
  int position = readInput();
  if (position > 0 && position <= data.length) {
    data.insert(position - 1, newData);

    print("Elements of array are:  ${data}");
  } else {
    print("index is outOfBound");
  }
}

void main(List<String> args) {
  // question1();
  // question2();
  question3();
  // question4();
}
