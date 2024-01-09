import 'dart:io';

void main()
{
   List num = [];
  stdout.write('how many elements you want in list : ');
  String? size = stdin.readLineSync();
  int Size = int.parse(size!);
  int max=0,secondmax=0;

  for(int i =0; i<Size; i++)
  {
    stdout.write('$i element : ');
    num.add(int.parse(stdin.readLineSync()!));
  }
  
  for(int i=0; i<Size; i++)
  {
      if(num[i]>max)
      {
        max=num[i];
      }
     
    }
   print(max);
    
 for(int i=0; i<Size; i++)
    {
       if(num[i]>secondmax && num[i]!=max)
      {
        secondmax=num[i];
      }
    }
    print(secondmax);
}