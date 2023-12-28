import 'dart:io';

void main(List<String> args) {
  
  stdout.write('enter first number : ');
  String? num1 = stdin.readLineSync();
  stdout.write('enter second number : ');
  String? num2 = stdin.readLineSync();

  int first = int.parse(num1!);
  int second = int.parse(num2!);
  int sum = first + second;
  stdout.write('sum : ');
  print(sum);
}