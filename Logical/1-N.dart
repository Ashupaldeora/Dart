import 'dart:io';

void main()
{
  stdout.write('Enter Nth number : ');
  String? num = stdin.readLineSync();
  int Nnumber = int.parse(num!);

  for(int i=1; i<=Nnumber; i++)
  {
    print(i);
  }

}