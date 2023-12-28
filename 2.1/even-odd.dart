import 'dart:io';

void main()
{
  stdout.write('Enter a number : ');
  String? num = stdin.readLineSync();
  int number = int.parse(num!);

  if(number%2==0)
  {
    print('number is even');
  }
  else{
    print('number is odd');
  }
}