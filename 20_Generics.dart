T echo<T>(T value) {
  return value;
}
// A generic function that swaps two elements in a list.
void swap<T>(List<T> list, int index1, int index2) {
  T temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}
// A generic function to check if a list contains a specific element.
bool containsElement<T>(List<T> list , T key){
  for(T item in list){
    if(item == key)
      return true;
  }
  return false;
}
void main() {
  var intResult = echo<int>(42);
  print(intResult); //42

  var stringResult = echo<String>('Hello');
  print(stringResult); // Hello

  // Using the swap function with a list of integers.
  List<int> numbers = [1, 2, 3, 4];
  swap<int>(numbers, 0, 2);
  print('Swapped list of integers: $numbers'); // Output: Swapped list of integers: [3, 2, 1, 4]

  // Using the swap function with a list of strings.
  List<String> words = ['apple', 'banana', 'cherry'];
  swap<String>(words, 1, 2);
  print('Swapped list of strings: $words'); // Output: Swapped list of strings: [apple, cherry, banana]


  print(containsElement(numbers, 10) ? 'true' : 'false'); //false
  print(containsElement(words, 'apple' ) ? 'true' : 'false'); //true

}
