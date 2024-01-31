import 'dart:io';

void main()
{
  stdout.write("Enter your age : ");
  int age = int.parse(stdin.readLineSync()!);

  try{
    if(age>18)
    {
      print("You are eligible to vote");
    }else{
      throw 1;
    }
  }
  catch(e)
  {
    print("you are not eligible for voting :(");
  }
}