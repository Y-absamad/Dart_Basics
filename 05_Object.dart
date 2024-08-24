void main() {
  /*
  When you declare a variable as Object, you explicitly set the type of the variable to Object. 
  Since Object is the root of all classes in Dart, it can hold any type of value.
  */

  Object x = 42; // x can hold any value because it's of type Object
  x = 'hello'; // This is allowed because Object can hold any type
  print(x is int); //false
  //print(x.length); // Error: The getter 'length' isn't defined for the class 'Object'.

  if (x is String) {
    print(x.length); // Allowed after checking x is a String
  }
}
