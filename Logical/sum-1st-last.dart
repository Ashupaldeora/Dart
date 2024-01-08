import 'dart:io';

void main()
{
  stdout.write('enter a number : ');
   String digit = stdin.readLineSync()!;
  var first = digit[0];
  print(first);
  var last = digit[digit.length-1];
  print(last);
  int First = int.parse(first);
  int Last = int.parse(last);
  print(First+Last);
}