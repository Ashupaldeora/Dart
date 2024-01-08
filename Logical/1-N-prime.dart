
import 'dart:io';
void main()
{
  stdout.write('enter Nth number : ');
  int number = int.parse(stdin.readLineSync()!);

 a:
for(int j=1; j<=number; j++)
{
 for(int i=2; i<=j/2; ++i)
 {
  if(j%i==0)
  {
  continue a;
   
  }


 }
 stdout.write('$j ');
}
  

}