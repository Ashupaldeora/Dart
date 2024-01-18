import 'dart:io';



void main() {
  print("1-Addition");
  print("2-Subtraction");
  print("3-Multiplication");
  print("4-Dividion");

  stdout.write("choose what you want to perform : ");
  int choose = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of a : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the value of b : ");
  int b = int.parse(stdin.readLineSync()!);

  switch (choose) {
    case 1:
      print(sum(a, b));
    case 2:
      print(sub(a, b));
    case 3:
      print(mul(a, b));
    case 4:
      print(div(a, b));
     default:
      print("Enter the right number");
  }
}

int sum(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int mul(int a, int b) {
  return a * b;
}

int div(int a, int b) {
  return (a ~/ b);
}
