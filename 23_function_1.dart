void printHello() {
  print('Hello');
}

int addNumbers(int a, int b) {
  return a + b;

  ///[ int addNumbers(int a , int b) => a + b; ] also allow
}


// Function to greet someone
String greet(String name) {
  return 'Hello, $name';
}

int sumList(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}

bool isNoble(Map _nobleGases, int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}


void main() {
  printHello(); // Hello

  int result = addNumbers(3, 5);
  print(result); // Output: 8

  print(greet('Alice')); // Output: Hello, Alice!

  List<int> list = [4, 2, 9, 41, 100, 15, 11, 5, 7, 56, 62];
  print(sumList(list)); // 312

  const Map<int, String> _nobleGases = {
    2: 'Helium',
    10: 'Neon',
    18: 'Argon',
    36: 'Krypton',
    54: 'Xenon',
    86: 'Radon'
  };

  print(isNoble(_nobleGases, 10)); //true;

}
