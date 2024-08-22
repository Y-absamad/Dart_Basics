void main()
{
  final String ? name;
  name = "yousef";    //Can be set at runtime.
  print(name);

  final String name1 = "yousef"; 
  print(name1);

/*
  error
  const String ? last;   
  last = "Ahmed"; //Must be known at the compile-time

  const num = 5;
  num = 15;  //error num is const
*/
  const String last = "Ahmed"; 
  print(last);

}