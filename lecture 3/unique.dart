import 'dart:io';

void main()
{
    List name = [];
  stdout.write('how many elements you want in list : ');
  String? size = stdin.readLineSync();
  int Size = int.parse(size!);
  

  for(int i =0; i<Size; i++)
  {
    stdout.write('$i element : ');
    name.add(stdin.readLineSync());
  }

   List unique = Set.of(name).toList();

   print(unique);
}