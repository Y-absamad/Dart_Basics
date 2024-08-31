void main() {
  var list = [1, 2, 3];
  assert(list[1] == 2);

  var list1 = ['Car', 'Boat', 'Plane'];
  list1.add('value'); // Adds 'value' to the end of the list
  assert(list1[3] == 'value');

  List<int> list2 = [1,2,3];
  assert(list2.length == 3);
  list2[1] = 1;  // [1 , 1 , 3];
  list2.remove(1); // Removes the first occurrence of 1    list2[1 , 2]
  list2.removeAt(0); //Removes the element at index 0      list2[2]
  int index = list2.elementAt(0); // Returns the element at index 0
  assert(index == 3);

  List<String> list3 = ['Car', 'Boat', 'Plane'];
  list3.removeLast(); // Removes the last element
  list3.addAll(['Joe' , 'list']);
  print(list3); //[Car, Boat, Joe, list]

  
  List<int> list4 = [4,2,9,41,100,15,11,5,7,56,62];
  list4.sort(); //Sorts the list in ascending order
  print(list4.last);//100
  print(list4.first);//2
  print(list4); //[2, 4, 5, 7, 9, 11, 15, 41, 56, 62, 100]

  
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.
}
