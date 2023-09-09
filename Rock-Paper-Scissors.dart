//Q. Make a two-player Rock-Paper-Scissors game against computer.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String> options = ["rock", "paper", "scissors"];
  Map<String, String> win = {
    "rock": "scissors",
    "paper": "rock",
    "scissors": "paper"
  };
  var user = 0, comp = 0;
  print('Game Begin');
  stdout.write('Enter your name: ');
  var name = stdin.readLineSync();
  while (true) {
    stdout.write('Make your move: ');
    var user_choice = stdin.readLineSync()?.toLowerCase();
    var comp_choice = options[Random().nextInt(options.length)];

    if (user_choice == "exit") {
      print('Scorces:-');
      break;
    }

    if (!options.contains(user_choice)) {
      print('Invalid move!');
      continue;
    }

    if (win[user_choice] == comp_choice) {
      print('$name wins: $user_choice vs $comp_choice');
      user++;
    } else if (win[comp_choice] == user_choice) {
      print('Computer wins: $comp_choice vs $user_choice');
      comp++;
    } else
      print('We have a tie!');
  }
  print("Users: $user");
  print("Computer: $comp");
}
