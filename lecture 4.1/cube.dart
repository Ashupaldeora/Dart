import 'dart:io';

void main()
{
   stdout.write('enter a number : ');
   int num = int.parse(stdin.readLineSync()!);
   print(cube(num));
}

int cube(int num)
{
  return num*num*num;
}