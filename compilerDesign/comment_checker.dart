import 'dart:io';

import 'utils/utils.dart';

/// reconize word comment,
/// to remove comment us `/\*(.|\n)*?\*/`
/// follow: https://stackoverflow.com/q/14975737/10157127

///single-line comment
void checkSingleLineComment(String data) {
  RegExp exp = RegExp(r'\/\/.*'); // or use `\/{2,2}.*`

  Iterable<Match> matches = exp.allMatches(data);

  matches.forEach((element) {
    stdout.writeln("single-line comment: ${element.group(0)}");
  });
}

///multi-line comment
void multiLineSingleLineComment(String data) {
  RegExp exp = RegExp(r'\/\*.*\/');

  Iterable<Match> matches = exp.allMatches(data);

  matches.forEach((element) {
    stdout.writeln("multi-line comment : ${element.group(0)}");
  });
}

void main(List<String> args) {
  sample_data.forEach((element) {
    checkSingleLineComment(element);
    multiLineSingleLineComment(element);
  });
}
