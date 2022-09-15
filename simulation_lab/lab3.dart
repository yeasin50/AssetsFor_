import 'dart:io';

t1() {
  for (int i = 0; i <= 5; i++) {
    for (int j = 0; j <= 5; j++) {
      stdout.write(
        "* ",
      );
    }
    print("");
  }
}

leapYearCheck(int year) {
  if ((year % 4 == 0) && ((year % 400 == 0) || year % 100 != 0))
    print("$year is leapYear");
  else
    print("$year is not leapYear");
}

shape2(int n) {
  int value = 1;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("${value++} ");
    }
    print("");
  }
}

//    1 
//   2 3 
//  4 5 6 
// 7 8 9 10 
  
shape3(int n) {
  int value = 1;
  for (int i = 1; i <= n; i++) {
    for (int j =i; j <  n ; j++) {
      stderr.write(" ");
    }
    for (int j = 0; j < i; j++) {
      stdout.write("${value++} ");
    }
    stdout.write("\n");
  }
}

void main(List<String> args) {
  int n = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  shape3(n);
}
