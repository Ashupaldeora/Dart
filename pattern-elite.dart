import 'dart:io';

void main() {
  int gap = 1, loop = 1;
  int newStart = 1, newstart2 = 1, l = 0;
  stdout.write('enter number of rows : ');
  int rows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= rows; i++) {
    int reverseGap = rows;
    loop = i;
    for (int s = 1; s < i; s++) {
      stdout.write("--");
    }

    for (int j = loop; j < (rows*2) - l; j++) {
      if (loop > rows) {
        gap += reverseGap;
        stdout.write('$gap ');
        reverseGap--;
      } else {
        stdout.write('$gap ');
        if (j <= rows-1) {
          gap += j;
        }
      }
      loop++;
    }
    newStart += 1;
    gap = newstart2 + newStart;
    newstart2 = gap;
    l += 1;
    print("\n");
  }
}
