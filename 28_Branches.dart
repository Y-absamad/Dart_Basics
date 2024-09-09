import 'dart:io';

main() {
  /// [if]
  stdout.write('Please enter your grade: ');
  String grade = stdin.readLineSync()!;
  int intGrade = int.parse(grade);

  if (intGrade >= 50 && intGrade <= 100) {
    print("Congratulations, you are successful");
  } else if (intGrade < 50) {
    print("Sorry, you are failed");
  } else {
    print("invalid input");
  }

  int number = 7;
  if (number > 10) {
    print('Number is greater than 10');
  } else if (number > 5) {
    print('Number is greater than 5 but less than or equal to 10');
  } else {
    print('Number is 5 or less');
  }

  int age = 20;
  String result = age >= 18 ? 'Adult' : 'Minor';
  print(result); // Outputs 'Adult'

  /// [if case]
  var data = [1, 2, 3];

  if (data case [1, 2, 3]) {
    print('Data is [1, 2, 3]');
  } else {
    print('Data does not match');
  }

  var point = {'x': 5, 'y': 10};

  if (point case {'x': var xValue, 'y': var yValue}) {
    print('x: $xValue, y: $yValue');
  } else {
    print('Not a valid point');
  }

  /// [switch]
  String grade1 = 'A';
  switch (grade1) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Average');
      break;
    default:
      print('Unknown grade');
  }

  int day = 3;

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}
