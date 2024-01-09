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
  stdout.write('enter position to change : ');
  int position = int.parse(stdin.readLineSync()!);
  stdout.write('Enter element to imsert : ');
  int element = int.parse(stdin.readLineSync()!);

  
  if(position >Size)
  {
    print('invalid position');
  }
  else{
    num.insert(position, element);
    print('new elements : $num');
  }
}