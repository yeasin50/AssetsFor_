import 'dart:io';

import 'utils/utils.dart';

/// fixed word checkUP
void fixedWordChecker({
  required String data,
  required String reconizer,
}) {
  if (data == reconizer) {
    stdout.writeln("$data matched with $reconizer");
  }
}

/// check [data] on [pattern],
/// ```dart
/// checkPattern(data, r"a*b+");
/// ```
List<String?> checkPattern(String data, String pattern) {
  RegExp exp = RegExp(pattern);

  Iterable<Match> matches = exp.allMatches(data);

  matches.forEach((element) {
    stdout.writeln("$pattern found: on $data");
  });

  return matches.map((e) => e.group(0)).toList();
}

void main(List<String> args) {
  sample_data.forEach((data) {
    //* task 2
    fixedWordChecker(data: data, reconizer: "a");
    fixedWordChecker(data: data, reconizer: "abb");
    checkPattern(data, r"a*b+");

    //* for lab3  'a*', 'a*b+', 'abb'.
    checkPattern(data, r'a.*');
    checkPattern(data, r'a.*b+');
    checkPattern(data, r'aab');
  });
}
