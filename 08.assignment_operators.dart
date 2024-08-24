void main() {
  int a = 5;
  double x = 2.5;

  //a = x; //erroe Dart does not automatically convert 'a' double to an int
  a = x.toInt(); // No error, 'a' will be 2

  a *= 2; // a = a * 2
  a += 1; // a = a + 1
  a -= 2; // a = a - 2
  //a /= 2; // The '/' operator in Dart performs division and returns 'a' double result.
  a ~/=
      2; // No error, The '~/' operator performs division and returns an integer result by discarding the remainder.
  print(a); //1
}
