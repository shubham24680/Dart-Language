/* Q. Take a list, say for example this one:
           a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
          and write a program that prints out all the elements of the list that are less than 5.*/

import 'dart:io';

void main(List<String> args) {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var less in a) {
    if (less < 5) stdout.write("$less ");
  }
}
