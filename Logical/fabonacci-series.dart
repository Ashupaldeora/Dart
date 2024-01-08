import 'dart:io';

void main() {
  stdout.write('enter Nth number : ');
  int Nth=int.parse(stdin.readLineSync()!);
  int n1=0,n2=1,n3;
 stdout.write('$n1 $n2 ');
  
  for(int i = 2 ;i <= Nth; i++){
   n3 = n1+n2;
    stdout.write('$n3 ');
    n1 = n2;
    n2 = n3;

  }
}