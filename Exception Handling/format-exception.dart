import 'dart:io';

void main()
{
  stdout.write("Enter a number : ");
 

  try{
     int num = int.parse(stdin.readLineSync()!);//Entering a double type data will throw an format exception
     print(num);
  }
  on FormatException
  {
       print("invalid format");//print when a user entered double type of data
  }

}