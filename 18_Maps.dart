void main() {
  /*
  In general, a map is an object that associates keys and values.
  Both keys and values can be any type of object.
  Each key occurs only once, but you can use the same value multiple times.
  */

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var gifts1 = Map<String, String>();
  gifts1['first'] = 'partridge';
  gifts1['second'] = 'turtledoves';
  gifts1['fifth'] = 'golden rings';

  var nobleGases1 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var gifts2 = {'first': 'partridge'};
  gifts2['fourth'] = 'calling birds';

  //If you look for a key that isn't in a map, you get null in return:
  var gifts3 = {'first': 'partridge'};
  assert(gifts3['fifth'] == null);

  //Use .length to get the number of key-value pairs in the map
  var gifts4 = {'first': 'partridge'};
  gifts4['fourth'] = 'calling birds';
  assert(gifts4.length == 2);

  var person = {'name': 'John', 'age': 30, 'city': 'New York'};
  // Accessing a value
  print(person['name']); // Output: John

  var person1 = <String, dynamic>{
    'name': 'John',
    'age': 30,
    'city': 'New York'
  };

  var person2 = {'name': 'John', 'age': 30};
  person2['city'] = 'New York'; // Adds a new entry
  person2['age'] = 31; // Updates the existing 'age' entry

  // Removing an entry
  person2.remove('city');

  // Checking existence
  print(person2.containsKey('age')); // Output: true
  print(person2.containsValue(31)); // Output: true

  // Using the Map constructor
  var emptyMap = Map();
  emptyMap['key1'] = 'value1';

  var person3 = {'name': 'John', 'age': 30};

  print(person3.length); // Output: 2
  print(person3.isEmpty); // Output: false

  person3.clear(); // Clears all entries
  print(person3.isEmpty); // Output: true
}
