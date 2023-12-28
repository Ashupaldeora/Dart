import 'dart:io';

void main()
{
  stdout.write('enter a number : ');
  String? num = stdin.readLineSync();
  int number = int.parse(num!);
  int cube = number * number * number ;
  stdout.write('cube : ');
  print(cube);
}