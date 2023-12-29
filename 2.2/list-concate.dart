import 'dart:io';

void main()
{
  List con = [];
  stdout.write('how many elements you want in list : ');
  String? size = stdin.readLineSync();
  int Size = int.parse(size!);

  for(int i =0; i<Size; i++)
  {
    stdout.write('$i element : ');
    con.add(stdin.readLineSync());
  }
   
   for(int i=0; i<Size; i++)
   {
    print(con[i]+" hello");
   }

}