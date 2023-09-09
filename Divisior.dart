//Q. Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter a number: ');
  var num = int.parse(stdin.readLineSync()!);
  stdout.write('Divisiors: ');
  for (var i = 1; i <= num / 2; i++) {
    if (num % i == 0) stdout.write("$i ");
  }
  stdout.write(num);
}
