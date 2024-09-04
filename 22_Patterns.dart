void main() {
  var numList = [1, 2, 3];
  var [a, b, c] = numList;
  print(a + b + c); // 6

  var points = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  for (var [x, y] in points) {
    print('x: $x, y: $y');
  }
// output
// x: 1, y: 2
// x: 3, y: 4
// x: 5, y: 6

  var obj = [1, 2];
  if (obj case [1, var b]) {
    print('Matched with b = $b');
    /*
    The code checks if the list obj starts with the value 1 and has any second element.
    If it does, it captures the second element in b and prints it.
    In this example, obj matches the pattern, so b is 2, and the code prints Matched with b = 2.
    */
  }

  var data = {
    'name': 'Alice',
    'address': {'city': 'Wonderland', 'zip': '12345'}
  };

  if (data case {'name': var name, 'address': {'city': var city}}) {
    print('Name: $name, City: $city');
  }

  processValue(42); // Integer: 42
  processValue('Hello'); // String: Hello
  processValue([1, 2, 3]); // List with length: 3
}

void processValue(dynamic value) {
  switch (value) {
    case int i:
      print('Integer: $i');
      break;
    case String s:
      print('String: $s');
      break;
    case List l:
      print('List with length: ${l.length}');
      break;
    default:
      print('Unknown type');
  }
}