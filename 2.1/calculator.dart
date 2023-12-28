import 'dart:io';

void main()
{
  stdout.write('Enter First number : ');
  String? First = stdin.readLineSync();
   stdout.write('Enter second number : ');
  String? Second = stdin.readLineSync();
  int first = int.parse(First!);
  int second = int.parse(Second!);

  stdout.write('Enter operator +,-,*,/ :  ');
  String? operator = stdin.readLineSync();

  switch(operator)
  {
    case '+' : stdout.write('addition : ');
              print(first+second);
    case '-' :stdout.write('Subtraction : ');
              print(first-second);  
    case '*' : stdout.write('Multiplication : ');
              print(first*second);          
    case '/' : stdout.write('Division : ');
              print(first/second);                   
  }

}