import 'dart:io';

void main()
{
  stdout.write('Enter Nth number : ');
  String? num=stdin.readLineSync();
  int Num=int.parse(num!);

  for(int i=1; i<=Num; i++)
  {
    if(i%2==0)
    {
      print(i);
    }
  }
}