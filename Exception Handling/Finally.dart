import 'Dart:io';

void main()
{
  stdout.write("Have you learnt Dart to become a flutter developer ?(yes/no) : ");
  late String dart = stdin.readLineSync()!;

  try{
    if(dart=="yes")
    {
      print("you can become a flutter developer");
    }
    else{
      throw 1;
    }
  }
  catch(e)
  {
      print("you cannot become a flutter developer yet !");
  }
  finally{
    
    print("come again!");
  }
}