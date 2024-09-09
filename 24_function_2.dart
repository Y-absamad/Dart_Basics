void printNumbers(int x, int y) {
  print('x = $x  y = $y');
}
/// [Optional Parameters]

void printNums([int? x, int? y]) {
  ///[This means you can call the function without providing any arguments, or you can provide some or all of the parameters.]
  print('x = $x  y = $y');
}

void printNums_1(int x  , [int? y]){
  print('x = $x  y = $y');
}

///void printNums_2([int? x] , int y){ [we cannot put the first parameter optional , If there is more than one parameter ]
//  print('x = $x  y = $y');
//}

void printNums_3([int? x]){ //this is allowe
  print('x = $x');
}

String greet(String name , [String? title]){
  return title != null ? 'Hello, $title $name!' : 'Hello, $name!';
}

String say(String from , String msg , [String? device]){
  var result = '$from says $msg';
  if(device != null){
    return '$result with a $device';
  }
  return result;
}

///[Named Optional Parameters]

void printNums_4({int? x , int? y}){ ///[You can specify them in any order when calling the function, and they improve readability.]
  print('x = $x  y = $y');
}

void printNums_5(int x , {int? y}){ 
  print('x = $x  y = $y');
}

// Named optional parameters with default values
String greet_1({required String name, String title = 'Mr./Ms.'}) {
  return 'Hello, $title $name!';
}
void main() {
  //printNumbers(); // error
  //printNumbers(5); // error
  printNumbers(5, 10); // 5 10

  /// [Optional Parameters]
  
  printNums(); // x and y are null
  printNums(5); // x = 5, y is null
  printNums(5, 10); // x = 5, y = 10

  //printNums_1(); // error
  printNums_1(5); // x= 5 , y = null
  printNums_1(5 , 10); // x = 5, y = 10

  printNums_3(); // x = null
  printNums_3(5); // x = 5

  print(greet('Alice')); // Output: Hello, Alice!
  print(greet('Alice', 'Ms.')); // Output: Hello, Ms. Alice!


  print(say('Bob', 'Howdy')); //Output: Bob says Howdy
  print(say('Bob', 'Howdy', 'smoke signal')); // Output: Bob says Howdy with a smoke signal


  ///[Named Optional Parameters]
  
  //printNums_4(5 , 10); // error
  
  printNums_4(); // null null
  
  printNums_4(x: 5); // x = 5
  
  printNums_4(y: 5); // x = null y = 5
  
  printNums_4(x: 5 ,y: 10); // x = 5 , y =10 
  
  printNums_4(y: 5 ,x: 10); // x =10 , y = 5



  ///printNums_5(5 , 10); //error [y is named Optional]  
  ///printNums_5(y: 10);  error [x is required ]
  printNums_5(5); // x = 5 , y = null
  printNums_5(5 , y: 10); // x = 5 , y = 10



  print(greet_1(name: 'Alice')); // Output: Hello, Mr./Ms. Alice!
  print(greet_1(name: 'Alice', title: 'Dr.')); // Output: Hello, Dr. Alice!
}
