//Q. Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter your name and age: ");
  var name = stdin.readLineSync();
  int age = int.parse(stdin.readLineSync()!);
  print("$name! you have ${100 - age} years left on earth.");
}
