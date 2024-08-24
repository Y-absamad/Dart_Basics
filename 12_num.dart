num add(num x , num y)//You can use num as a parameter or return type in functions when you want to accept either int or double.
{
  return x + y;
}

void main() {
  ///[num]: A superclass in Dart that encompasses both int and double.
  //Usage: Useful for functions or variables that can hold either integer or floating-point values.
  
  num b = 20.5;   // b can have both int and double values

  print(b.toInt()); // 20

  num n = -5;
  print(n.abs()); // 5

  n = 55;
  print(n.toDouble()); //55.0

  print(add(5, 10.5)); // 15.5 (int + double)
  
}
