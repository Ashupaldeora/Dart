
import 'dart:io';

void main() {
  List matrix1 = [[]];
  List matrix2 = [[]];
  int num, n;

  stdout.write("Enter the number : ");
  n = int.parse(stdin.readLineSync()!);


  for (int i = 0; i < n; i++) {
    matrix1.add([]);
  }


  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("Enter value of Element[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      matrix1[i].add(num);
    }
  }

  print("\n enter 2nd matrix\n");

  for (int i = 0; i < n; i++) {
    matrix2.add([]);
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("Enter value of Element[$i][$j] : ");
      num = int.parse(stdin.readLineSync()!);
      matrix2[i].add(num);
    }
  }


  print("Matrix:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("${matrix1[i][j]} ");
    }
    print(""); 
  }

  print("Matrix 2 :");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("${matrix2[i][j]} ");
    }
    print(""); 
  }

  print("Adding matrix");


  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("${matrix1[i][j] + matrix2[i][j]} ");
    }
    print(""); 
  }

}
