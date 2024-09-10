void divide(int a, int b) {
  if (b == 0) {
    throw Exception('Cannot divide by zero!');
  }
  print(a / b);
}

void parseInt(String input) {
   try {
    // Attempt to parse the input as an integer
    int number = int.parse(input);
    print('Parsed number: $number');
  } on FormatException {
    // Handle FormatException if the input is not a valid integer
    print('Caught a FormatException: Invalid input format');
  } catch (e) {
    // Handle any other exceptions
    print('Caught an exception: $e');
  }
}

void main() {
 
  try {
    divide(4, 0);
  } catch (e) {
    print('Caught an exception: $e'); //Caught an exception: Exception: Cannot divide by zero!
  }

  parseInt('input'); //Caught a FormatException: Invalid input format

  parseInt('123'); //Parsed number: 123
  
  try {
    divide(4, 2);
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    ///The [finally] block contains code that is always executed, whether an exception is thrown or not. It is useful for cleanup activities like closing files or releasing resources.
    print('This code runs no matter what.');
  }

   try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    //
    //rethrow; // Allow callers to see the exception.
  }


  String? input = null; // Nullable String
  try {
    int number = int.parse(input!); // Using the null check (!) to force unwrapping
    print('Parsed number: $number');
  } on FormatException {
    print('Caught a FormatException: Invalid input format');
  } catch (e) {
    print('Caught an exception: $e'); // This will catch other exceptions like TypeError
  }
}
