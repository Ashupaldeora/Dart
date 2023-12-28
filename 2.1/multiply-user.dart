import 'dart:io';

void main() {
  stdout.write('enter starting number : ');
  String? num1 = stdin.readLineSync();
  stdout.write('enter ending number : ');
  String? num2 = stdin.readLineSync();
  int first = int.parse(num1!);
  int second = int.parse(num2!);
  for(int i=first; i<=second; i++)
  {
  for (int j = 1; j <= 10; j++) {
    stdout.write('$i * $j : ');
    print(i * j);
  }
  stdout.write('\n');
  }
}
