/*Q. Time for some fake graphics! Let’s say we want to draw game boards that look like this:
 --- --- --- 
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- --- 
This one is 3x3 (like in tic tac toe).
Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter rows and columns: ");
  int rows = int.parse(stdin.readLineSync()!);
  int columns = int.parse(stdin.readLineSync()!);
  int i, j;
  for (i = 1; i <= rows; i++) {
    for (j = 1; j <= columns; j++) {
      stdout.write(' ---');
    }
    print('');
    for (int j = 1; j <= columns; j++) {
      stdout.write('| @ ');
    }
    print('|');
  }
  for (j = 1; j <= columns; j++) {
    stdout.write(' ---');
  }
}
