/*Q. Create a program that will play the “cows and bulls” game with the user. The game works like this:
1. Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. For every digit the user guessed 
  correctly in the correct place, they have a “cow”. For every digit the user guessed correctly in the wrong place is a “bull.”
2. Every time the user makes a guess, tell them how many “cows” and “bulls” they have. Once the user guesses the correct number,
 the game is over. Keep track of the number of guesses the user makes throughout the game and tell the user at the end.*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  final random = Random();
  String comp = (random.nextInt(8999) + 1000).toString();
  stdout.write("Guess a 4 digit number: ");
  String user = stdin.readLineSync()!;
  int cows = 0, bulls = 0;
  for (int i = 0; i < comp.length; i++) {
    if (comp[i] == user[i])
      cows++;
    else
      bulls++;
  }
  print("COWS: $cows, BULLS: $bulls");
}
