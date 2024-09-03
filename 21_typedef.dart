///In Dart, [typedef] is used to create an alias or a shorthand for a function type.
///This can make your code more readable and easier to manage,
///especially when dealing with complex function signatures.

typedef I = int;
typedef S = String;
typedef IntList = List<int>;
typedef IntOperation = int Function(int a, int b);///This line defines a new type called [IntOperation] that represents a function taking two [int] parameters and returning an [int].
typedef StringOperation = String Function(String);

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

void performOperation(IntOperation operation, int a, int b) {
  ///The [performOperation] function takes an [IntOperation] as a parameter, meaning it can take any function that matches the signature defined by [IntOperation].
  print(operation(a, b));
}


StringOperation shout = (String s) => s.toUpperCase();
StringOperation whisper = (String s) => s.toLowerCase();

void main() {
  I number = 5;  // I = int;
  print(number); //5

  S name = 'Yousef';  // S = String
  print(name);

  IntList il = [1, 2, 3];
  print(il); // Output: [1, 2, 3]

  performOperation(add, 5, 3); // Outputs: 8
  performOperation(subtract, 5, 3); // Outputs: 2
  ///Both [add] and [subtract] functions match the [IntOperation] type, so they can be passed to [performOperation].


  print(shout("Hello"));   // Outputs: HELLO
  print(whisper("Hello")); // Outputs: hello

}
