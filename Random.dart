//Q. Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var ran = Random().nextInt(100);
  stdout.write('Guess a number between 1 to 100: ');
  var user_choice = int.parse(stdin.readLineSync()!);
  final random = Random();
  List<int> l = List.generate(10, (_) => random.nextInt(100));
  print(l);
  if (user_choice == ran)
    print('Your guessed is exactly right.');
  else if (user_choice > ran)
    print('Your guessed is too high.');
  else
    print('Your guessed is too low.');
}
