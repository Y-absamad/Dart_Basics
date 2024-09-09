///[Arrow Functions]

int square(int x) => x * x;

int add(int x, int y) => x + y;

void printMessage(String message) => print(message);

void greet(String name) => print('Hello, $name');

String checkEvenOdd(int number) => number % 2 == 0 ? 'Even' : 'Odd';

///[Arrow Functions with Optional Parameters ]

void printNums(int x, [int? y]) => print('x = $x , y = $y');

void printNums_1([int? x, int? y]) => print('x = $x , y = $y');

String greet_1(String name, [String? title]) =>
    title != null ? 'Hello, $title $name!' : 'Hello, $name!';

///[Arrow Functions with Named Optional Parameters ]
String greet_2({required String name, String title = 'Mr./Ms'}) =>
    'Hello, $title $name!';

///[Arrow Function Returning a List]
List<int>getEvenNumbers(List<int>numbers) => numbers.where((n) => n % 2 == 0).toList(); 

void main() {
  print(square(4)); // Output: 16

  print(add(3, 5)); // Output: 8

  printMessage("Hello, Dart!"); // Output: Hello, Dart!

  greet('Yousef'); // Output Hello, Yousef

  print(checkEvenOdd(4));  // Output: Even
  print(checkEvenOdd(7));  // Output: Odd

  printNums(5); // x = 5 , y = null
  printNums(5, 10); // x = 5 , y = 10

  printNums_1(); // null = 5 , y = null
  printNums_1(5); // x = 5 , y = null
  printNums_1(5, 10); // x = 5 , y = 10

  print(greet_1('Alice')); // Output: Hello, Alice!
  print(greet_1('Alice', 'Ms.')); // Output: Hello, Ms. Alice!

  print(greet_2(name: 'Alice')); // Output: Hello, Mr./Ms. Alice!
  print(greet_2(name: 'Alice', title: 'Dr.')); // Output: Hello, Dr. Alice!

  ///[Arrow Function Inside forEach]
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) => print(number * 3)); // 3 6 9 12 15 


  print(getEvenNumbers([1, 2, 3, 4, 5, 6]));  // Output: [2, 4, 6]

}
