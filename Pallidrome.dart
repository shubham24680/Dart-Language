//Q. Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter a String: ');
  var s = stdin.readLineSync();
  print(s?.split('').reversed.join(''));
  if (s?.compareTo(s.split('').reversed.join('')) == 0)
    print('Given string is a pallidrome.');
  else
    print('Try again!');

  stdout.write('Tell me about yourself: ');
  var intro = stdin.readLineSync();
  print(intro?.split(' ').reversed.join(' '));
}
