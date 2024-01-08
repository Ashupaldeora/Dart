import 'dart:io';

void main()
{
 
    stdout.write('Enter Nth number : ');
  String? num=stdin.readLineSync();
  int Num=int.parse(num!);
   int Sum=0;

  for(int i=1; i<=Num; i++)
  {
    Sum=i+Sum;
  }
  print(Sum);
}