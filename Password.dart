/*Q. Write a password generator in Dart. Be creative with how you generate passwords - strong passwords have a mix of lowercase letters,
 uppercase letters, numbers, and symbols. The passwords should be random, generating a new password every time the user asks for a new
 password. Include your run-time code in a main method.*/

import 'dart:io';
import 'dart:math';
import 'dart:convert';

void main(List<String> args) {
  stdout.write("Your new password will be: ");
  password();
}

void password() {
  final random = Random.secure();
  List<int> pass = List.generate(5, (_) => random.nextInt(255));
  List word = base64Encode(pass).split('').toList();
  word.shuffle();
  print(word.join(''));
}
