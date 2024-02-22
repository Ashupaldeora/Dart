import 'dart:io';

void main()
{
  List<dynamic> number = [1,2,3,4,5,6,7,8,9,9];

  print(sum(number));
}

dynamic sum(List numbers)
{
 dynamic sum=0;
  for(var num in numbers)
  {
    sum+=num;
  }
  return sum;
}
