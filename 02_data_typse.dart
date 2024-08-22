void main() {
  String name = "yousef";
  int age = 22;
  bool single = true;
  double money = 0.5;
  print('Name : $name');
  print('Age : $age');
  print('Is single : $single');
  print('have money $money\$');

  // var It could be any variable
  var s = "Ahmed"; // s is string
  var x = 25; // x is int
  //x = "string";  error x is int  , we can't change

  String? name1; // Nullable type. Can be `null` or string.

  String name2; // Non-nullable type. Cannot be `null` but can be string.
  //print(name2); error
}
