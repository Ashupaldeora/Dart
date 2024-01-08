import 'dart:io';

void main()
{
  stdout.write('enter a number : ');
   int digit = int.parse(stdin.readLineSync()!);
  print('$digit'.length);
}