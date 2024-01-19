import 'dart:io';

class Railway {
  int? TrainNumber;
  String? TrainName;
  String? Source;
  String? Destination;
  String? TrainTime;

  void set() {
    stdout.write('Train name : ');
    TrainName = stdin.readLineSync();

    stdout.write('Train number : ');
    TrainNumber = int.parse(stdin.readLineSync()!);

    stdout.write('Source : ');
    Source = stdin.readLineSync();

    stdout.write('Destination : ');
    Destination = stdin.readLineSync();

    stdout.write('Time : ');
    TrainTime = stdin.readLineSync();
    ;
  }
  void get()
  {
     
    print("Train Number : $TrainNumber");
    print("Train Name : $TrainName");
    print("Train source : $Source");
    print("Train destination : $Destination");
    print("Train Time : $TrainTime");
  }  
}

void main() {
  
  List<Railway> railobj = [];

  for (int i = 1; i <= 3; i++) {
    Railway R1 = Railway();

    print("\n details of train $i \n");

    R1.set();

    railobj.add(R1);
  }

    stdout.write("\nEnter the Train Number to search: ");
  int userTrainNum = int.parse(stdin.readLineSync()!);

  if(railobj[0].TrainNumber==userTrainNum)
  {
    railobj[0].get();
  }else if(railobj[1].TrainNumber==userTrainNum)
  {
    railobj[1].get();
  }else if(railobj[2].TrainNumber==userTrainNum)
  {
    railobj[2].get();
  }
}
