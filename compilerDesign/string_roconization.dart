import 'dart:io';

/// fixed word checkUP
void fixedWordChecker({
  required String data,
  required String reconizer,
}) {
  if (data == reconizer) {
    stdout.writeln("$data matched with $reconizer");
  }
}

/// `a*b+` pattern finder
void checkPattern(String data) {
  RegExp exp = RegExp(r'a*b+');

  Iterable<Match> matches = exp.allMatches(data);

  matches.forEach((element) {
    stdout.writeln("$data match with pattern a*b+");
  });
}

void main(List<String> args) {
  ///sample data
  final sample_data = ["this", "is", "a", "amigo", "abb", "hoia"];

  sample_data.forEach((data) {
    fixedWordChecker(data: data, reconizer: "a");
    fixedWordChecker(data: data, reconizer: "abb");
    checkPattern(data);
  });
}
