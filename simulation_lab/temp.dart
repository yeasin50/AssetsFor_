import 'dart:convert';
import 'dart:io';
void main() {
  print('Please your name:');
  String name = stdin.readLineSync(encoding: utf8)??"";
  print('$name');
}