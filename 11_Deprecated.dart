class Calculator {
  
  /// The [@Deprecated] annotation helps developers transition from old methods to new ones without immediately breaking existing code.
  
  /// Use [add] instead.
  @Deprecated('Use add instead')
  int addNumbers(int a, int b) {
    return add(a, b);
  }

  int add(int a, int b) {
    return a + b;
  }
}

void main() {
  Calculator calc = Calculator();

  // Using the deprecated method
  int result1 = calc.addNumbers(5, 3);
  print('Result using deprecated method: $result1'); // Output: 8

  // Using the new method
  int result2 = calc.add(5, 3);
  print('Result using new method: $result2'); // Output: 8
}
