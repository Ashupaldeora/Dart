import 'dart:io';


class Students
{
  String?  name;
  int? age;
  int? id;

  void set()
  {
    stdout.write('Student name : ');
    name = stdin.readLineSync();
    stdout.write('Student age : ');
    age = int.parse(stdin.readLineSync()!);
    stdout.write('Student id : ');
    id = int.parse(stdin.readLineSync()!);
  }

  void get()
  {
     print('Id : $id');
    print('Name : $name');
    print('Age : $age');
   
    

  }
}

void main()
{
 Students Sdetail = Students();
     
     List<Students> Sobj = [];

     for(int i=1; i<=3; i++)
     {
    
    Sdetail.set();
    
    Sobj.add(Sdetail);
     }

   for(int i=0; i<3; i++)
   {  
   Sobj[0].get();
   }
}