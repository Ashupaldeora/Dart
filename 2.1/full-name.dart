import 'dart:io';

void main(List<String> args) {
  stdout.write('enter first number : ');
  String? firstName = stdin.readLineSync();
  stdout.write('enter second number : ');
  String? lastName = stdin.readLineSync();

  stdout.write('full name : ');
  print('$firstName ' + '$lastName');

}
