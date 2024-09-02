void main() {
  /*
    What is a Set?
    In Dart, a Set is an unordered collection of unique items. This means:

    Unordered: The elements in a set do not have a specific order. You cannot access elements by index like you do in a list.
    Unique items: A set cannot contain duplicate elements. If you try to add a duplicate, it will be ignored.
   */

  var numbers = {1,2,3,4,5};
  print(numbers);

  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  var emptySet = <int>{};
  print(emptySet); // Output: {}


  // Converting a List to a Set
  var listWithDuplicates = [1, 2, 2, 3, 4, 4, 5];
  var uniqueNumbers = Set<int>.from(listWithDuplicates);
  print(uniqueNumbers);  // Output: {1, 2, 3, 4, 5}

  // Adding Elements
  var letters = Set<String>();
  letters.add('a');
  letters.add('b');
  letters.add('c');
  print(letters); // Output: {a, b, c}

  //addAll(elements): Adds multiple elements to the set.
  var fruits = {'apple' , 'banana'};
  fruits.addAll(['orange', 'grape']);
  print(fruits); // Output: {apple, banana, orange, grape}

  //remove(element): Removes a single element from the set.
  fruits.remove('banana');
  print(fruits); // Output: {apple, orange , grape}

  //removeAll(elements): Removes multiple elements from the set.
  fruits.removeAll(['grape' , 'apple']);
  print(fruits); // Output: {orange}

  //clear(): Removes all elements from the set.
  fruits.clear();
  print(fruits); // Output: {}
  fruits.addAll(['orange', 'apple' , 'banana']);
  
  //contains(element): Checks if the set contains an element.
  print(fruits.contains('banana')); // Output: true
  print(fruits.contains('grape')); // Output: false

  //Set Operations
  //union(otherSet): Returns a new set with all elements from both sets.
  var setA = {1, 2, 3};
  var setB = {3, 4, 5};
  var unionSet = setA.union(setB);
  print(unionSet); // Output: {1, 2, 3, 4, 5}

  // intersection(otherSet): Returns a new set with elements common to both sets.
  var intersectionSet = setA.intersection(setB);
  print(intersectionSet); // Output: {3}

  /*
  Set vs. List:

  Order: Lists maintain the order of elements; sets do not.
  Duplicates: Lists can contain duplicate elements; sets cannot.
  Access: Lists allow access by index; sets do not.
  
  */
}

