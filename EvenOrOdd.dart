//Q. Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter your number: ');
  var no = int.parse(stdin.readLineSync()!);
  if (no & 1 == 1)
    print('You have entered an Odd number.');
  else
    print('You have entered an Even number.');
}
