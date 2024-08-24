void main() {
  int a, b;
  a = 5;
  b = 10;
  print('a + b = ${a + b}'); //15
  print('a * b = ${a * b}'); //50
  print('a - b = ${a - b}'); //-5
  print('a / b = ${a / b}'); //.5
  print('b / a = ${b / a}'); //2.0
  print('b % a = ${b % a}'); //0


  assert(2 + 3 == 5);
  /*
  The assert statement in Dart is used to check that a condition is true during development. 
  If the condition is true, the program continues to run normally. 
  However, if the condition is false, the program throws an AssertionError, 
  which is useful for catching bugs during the development and testing phases.
  */
  assert(2 + 5 == 9); // This would fail
}
