void main() {
  String name = "yousef";
  int age = 22;
  bool single = true;
  double money = 0.5;
  print('Name : $name');
  print('Age : $age');
  print('Is single : $single');
  print('have money $money\$');

  /*
  var It could be any variable
  the type is inferred by the compiler based on the assigned value.
  Once the type is inferred, it cannot change.
  */
  

  var s = "Ahmed";
  print(s.length);

  var x = 25; 
  x = 50;  // Allowed because 50 is also an int
  //x = "Hello";  // Error: A value of type 'String' can't be assigned to a variable of type 'int'
  var foo = const []; // The type of foo is inferred as List<dynamic> because it is being assigned an empty list.

  foo = const [1, 2, 3]; // Reassigning to another const list is allowed.
  //foo.add(4); // Error: Cannot add to an unmodifiable list.

  String? name1; // Nullable type. Can be `null` or string.

  String name2; // Non-nullable type. Cannot be `null` but can be string.
  //print(name2); //error

}
