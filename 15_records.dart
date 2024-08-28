void main() {
  /*
  Records in Dart provide a simple, efficient way to group multiple values together.
  They are immutable, strongly typed, and support both positional and named fields.
  Records can be used in various scenarios, such as returning multiple values from functions or temporarily grouping related data.
   */
  
  //Record syntax
  (String, int) record;
  record = ('A string', 123);
  print(record.$1); // A string
  print(record.$2); // 123

  ({int a, bool b}) record1;
  record1 = (a: 123, b: true);
  print(record1.b); // true
  print(record1.a); // 123

  var record2 = ('first', 'last');
  print(record2.$1); // first
  print(record2.$2); // last

  (int a, int b) recordAB = (1, 2);
  (int x, int y) recordXY = (3, 4);
  recordAB = recordXY;
  print(recordAB.$1); //3
  print(recordXY.$1); //3

  var user = (name: 'yousef', age: 22);
  print(user.name); // yousef
  print(user.age); // 22

  (num, Object) pair = (42, 'a');
  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.
  print(first); //42
  print(second); //a

  //Record equality
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); // 'true'.

  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color1 = (r: 1, g: 2, b: 3);

  print(point1 == color1); // Prints 'false'. Lint: Equals on unrelated types.

  //Multiple returns
  var userdate = getUserData();
  print(userdate.$1); //Yousef
  print(userdate.$2); //Ahmed

  var data = getNameAndAge();
  print(data.age); // 45
  print(data.name); //Joe
}

(String, String) getUserData() {
  return ('Yousef', 'Ahmed');
}

({int age, String name}) getNameAndAge() {
  String name = 'Joe';
  int age = 45;
  return (age: age, name: name);
}