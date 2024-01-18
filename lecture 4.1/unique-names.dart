import 'dart:io';

void main()
{
  List name = ['ashu','aayush','ashu'];
  print(uniqueNames(names: name).toList());
}

Set uniqueNames({required List  names})=> names.toSet() ;