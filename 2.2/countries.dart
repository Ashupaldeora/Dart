import 'dart:io';

void main()
{
  List countries = [];
  for(int i=0; i<28; i++)
  {
    stdout.write('$i st state : ');
    countries.add(stdin.readLineSync());

  }

  for(int i=0; i<28; i++)
  {
    print(countries[i]);
  }
}
