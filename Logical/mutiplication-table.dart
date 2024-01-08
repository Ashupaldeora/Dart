import 'dart:io';

void main()
{
    
  stdout.write('enter a number : ');
  String? num1 = stdin.readLineSync();
  int number = int.parse(num1!);

  for(int i=1; i<=10; i++)
  {
    stdout.write('$number * $i : ' );
    print(number*i);

  }
  
}