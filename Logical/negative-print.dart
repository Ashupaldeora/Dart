import 'dart:io';

void main()
{
   List num = [];
  stdout.write('how many elements you want in list : ');
  String? size = stdin.readLineSync();
  int Size = int.parse(size!);

  for(int i =0; i<Size; i++)
  {
    stdout.write('$i element : ');
    num.add(int.parse(stdin.readLineSync()!));
  }
  
  for(int i=0; i<Size; i++)
  {
    if(num[i]<0)
    {
      stdout.write(num[i]);
    }
  }
}