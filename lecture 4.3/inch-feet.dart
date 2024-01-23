import 'dart:io';

class FeetInch
{
  int feet=0,inch=0;

  void set()
  {
    stdout.write("Feet : ");
    feet = int.parse(stdin.readLineSync()!);
    stdout.write("Inch : ");
    inch = int.parse(stdin.readLineSync()!);
  }

  void get()
  {
    feet+=inch~/12;
    inch -= (inch~/12)*12;

    print("Feet : $feet");
    print("Inch : $inch");

  }
}
void main()
{
  FeetInch fi=FeetInch();

  fi.set();
  fi.get();
}