import 'dart:io';

void main(){

  stdout.write("Enter 1st number : ");
  int num1=int.parse(stdin.readLineSync()!);
  stdout.write("Enter 2nd number : ");
  int num2 = int.parse(stdin.readLineSync()!);

  try{
    print(num1~/num2);
  }
  on UnsupportedError
  {
    print("A number can't be divided by zero");
  }
}