import 'dart:io';


class AgeValidate {
  late String name, birthdate;
  late var DayThirtyone;
  void set() {
    stdout.write("Enter your name : ");
    name = stdin.readLineSync()!;
    stdout.write("Enter birth date (DD/MM/YYYY) : ");
    birthdate = stdin.readLineSync()!;
  }

  int Findyear() {
    var Realage = int.parse(birthdate.substring(birthdate.length - 4));
    return Realage;
  }
}

class DateValidate extends AgeValidate {
  int Date() {
    var Realdate = int.parse(birthdate[0] + birthdate[1]);

    return Realdate;
  }

  int month() {
    var RealMonth = birthdate[3] + birthdate[4];
    var Realmonth = int.parse(RealMonth);

    return Realmonth;
  }

  int day31() {
    if (month() == 1 ||
        month() == 3 ||
        month() == 5 ||
        month() == 7 ||
        month() == 8 ||
        month() == 10 ||
        month() == 12) {
      DayThirtyone = 31;
    } else if (month() == 2) {
      if (Findyear() % 4 == 0) {
        if (Findyear() % 100 == 0) {
          if (Findyear() % 400 == 0) {
            DayThirtyone = 29;
          } else {
            DayThirtyone = 28;
          }
        } else {
          DayThirtyone = 29;
        }
      } else {
        DayThirtyone = 28;
      }
    } else {
      DayThirtyone = 30;
    }
    return DayThirtyone;
  }
}

int main() {
  
  int ageincreament = 0;
  DateValidate age = DateValidate();
   restart :

// int userAge = age.set()
  for(int i=1; i<=3; i++){
   
  age.set();
  if (age.Date() >= 1 && age.Date() <= age.day31()) {
    if (age.month() >= 1 && age.month() <= 12) {
      if (age.Findyear() >= 1924 && age.Findyear() <= 2024) {
        if (age.month() > 1 && age.Findyear() == 2024) {
          print("invalid month");
          i=0;
           continue restart;
        } else {
          if (age.month() != 1 && age.Findyear() < 2024) {
            ageincreament = -1;
          }
          var ExactAgeofUser = (2024 + ageincreament) - age.Findyear();
          print("your age : $ExactAgeofUser");
        }
      } else {
        print("invalid year of birth");
        i=0;
         continue restart;
      }
    } else {
      print("invalid date");
      i=0;
      continue restart;
    }
  } else {
    print("invalid month");
    i=0;
    continue restart;
  }
 
  }

  return 0;
}
