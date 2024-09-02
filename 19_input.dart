import 'dart:io';
void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync(); // The ? after String means that name can be null if the user just hits enter without typing anything.
  print('Hello, $name');

  stdout.write('Enter your age: ');
  String ageInput = stdin.readLineSync()!;// ! Assert that the input is not null

  int age = int.parse(ageInput);// Parse ageInput to an integer.  
  //if ageInput is "abc", the method will throw a FormatException.
  print('You are $age years old.');
}
