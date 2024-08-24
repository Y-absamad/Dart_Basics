void main() {
  int a = 2;
  int b = 5;

  // Prefix
  ++a; //increments 'a' by 1, so 'a' becomes 3.
  --a; // decrease 'a' by 1, so 'a' becomes 2.

  a = ++b; // increments 'b' first so 'b' becomes '6' and then assigns this value to 'a'

  assert(a == 6);
  assert(b == 6);

  // Postfix
  b++; //increments 'b' by 1, so 'a' becomes 7.
  b--; // decrease 'b' by 1, so 'a' becomes 6.

  b = a++; // assigns the current value of 'a' to 'b', then increments 'a' by 1.

  assert(b == 6);
  assert(a == 7);

  /*
  Key Differences
  Prefix (++x or --x): The variable is modified before the value is used in the expression.
  Postfix (x++ or x--): The variable is modified after the value is used in the expression.
*/
}
