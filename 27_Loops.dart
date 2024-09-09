import 'dart:io';
void main() {
  // Print numbers from 1 to 5
  for (var i = 1; i <= 5; i++) {
    stdout.write('$i '); // Output: 1, 2, 3, 4, 5
  }
  print('\n');

  List<String> fruits = ['apple', 'banana', 'orange'];
  for (var fruit in fruits) {
    stdout.write('$fruit '); // Output: apple, banana, orange
  }
  print('\n');

  int i = 1;
  while (i <= 5) {
    stdout.write('$i '); // Output: 1, 2, 3, 4, 5
    i++; // Increment `i` to avoid infinite loop
  }
  print('\n');

  i = 1;
  do {
    stdout.write('$i '); // Output: 1, 2, 3, 4, 5
    i++; // Increment `i`
  } while (i <= 5);
  print('\n');

  List<int> numbers = [1, 2, 3, 4, 5];

  numbers.forEach((number) {
    stdout.write('${number * 2} '); // Output: 2, 4, 6, 8, 10
  });
  print('\n');

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3
  print('\n');

}
