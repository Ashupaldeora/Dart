import 'dart:io';

void main()
{
 
    stdout.write('Enter a number : ');
  String? num=stdin.readLineSync();
  int Num=int.parse(num!);
   int Factorial=1;

  for(int i=Num; i>=1; i--)
  {
    Factorial*=i;
  }
  print(Factorial);
}