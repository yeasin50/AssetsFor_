import 'dart:convert';
import 'dart:io';

/* This is not actual one, 😐, this is just getting word
Design a lexical analyzer for given language and the lexical analyzer should 
* ignore redundant spaces,
* tabs and new lines.
* It should also ignore comments. Although the syntax specification states
that identifiers can be arbitrarily long, you may restrict the length to
some reasonable value. 
*/

void main(List<String> args) {
  late String? inputString;

  stdout.write("Enter the sentence: ");
  inputString = stdin.readLineSync(encoding: utf8);

  // you can loop to
  if (inputString == null) return;

  List<String> result = [];
  bool _newWord = false;
  String word = "";
  for (int i = 0; i < inputString.length; i++) {
    switch (inputString[i]) {
      case " ":
        _newWord = true;
        continue Next;

      case "\t":
      case "\n":
        break;
      Next:
      default:
        if (i == inputString.length - 1) {
          result.add(word += inputString[i]);
        } else if (_newWord) {
          if (word.isNotEmpty) result.add(word);
          _newWord = false;
          word = "";
        } else {
          word += inputString[i];
        }
      // print(" inner p $word");
    }
  }

  result.forEach((element) {
    stdout.writeln(element);
  });
}
