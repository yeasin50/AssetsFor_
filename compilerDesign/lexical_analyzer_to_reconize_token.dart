import 'dart:convert';
import 'dart:io';

/* 
Design a lexical analyzer for given language and the lexical analyzer should 
* ignore redundant spaces,
* tabs and new lines.
* It should also ignore comments. Although the syntax specification states
that identifiers can be arbitrarily long, you may restrict the length to
some reasonable value. 
*/

///using built-in methods
void analyzer1(String input) {
  final result =
      input.replaceAll("\t", "  ").replaceAll("  ", "").split(" ").toList();

  result.forEach((element) {
    print(element);
  });
}

// remove reserve keywords

void reverseKeywords() {}

void main(List<String> args) {
  late String? inputString;

  stdout.write("Enter the sentence: ");
  inputString = stdin.readLineSync(encoding: utf8);

  // you can loop to
  if (inputString == null) return;
  analyzer1(inputString);
}
