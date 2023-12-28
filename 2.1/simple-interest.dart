import 'dart:io';

void main()
{
  stdout.write('enter total amount : ');
  String? amount = stdin.readLineSync();
  stdout.write('enter rate : ');
  String? rate = stdin.readLineSync();
  stdout.write('enter years');
  String? years = stdin.readLineSync();
  int Amount = int.parse(amount!);
   int Rate = int.parse(rate!);
    int Years = int.parse(years!);
    double simpleInterest = (Amount * Rate * Years )/100;
    stdout.write('simple interest : ');
    print(simpleInterest);
}