import 'dart:io';

import 'utils/utils.dart';

List<String?> checkSlash(String data) {
  RegExp exp = RegExp(r"\s?.*\/.*");

  Iterable<Match> matches = exp.allMatches(data);

  for (final match in matches) {
    stdout.writeln("found slash on: ${match.group(0)}");
  }

  return matches.map((e) => e.group(0)).toList();
}

void main(List<String> args) {
  sample_data.forEach((element) {
    checkSlash(element);
  });
}
