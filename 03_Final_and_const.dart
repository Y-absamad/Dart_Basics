void main()
{
  //a final variable can only be set once.
  final String ? name;
  name = "yousef";    //Can be set at runtime.
  print(name);

  final String name1 = "yousef"; 
  print(name1);

  // You can declare a final variable with or without a type annotation.
  //the type is inferred
  final dog = 'Bob';


/*
  error
  const String ? last;   
  last = "Ahmed"; //Must be known at the compile-time

  const num = 5;
  num = 15;  //error num is const
*/
  const String last = "Ahmed"; 
  print(last);


  //Since the value is an integer, Dart infers the type as int.
  const bar = 1000000;

  const baz = [];
  //baz = [42]; // Error: Constant variables can't be assigned a value.
}