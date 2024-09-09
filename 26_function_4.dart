// Function that applies another function to two numbers
void executeOperation(int a, int b, Function operation) {
  print(operation(a, b));
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
int multiply(int x, int y) => x * y;


void main() {
  executeOperation(5, 3, add);       // Output: 8
  executeOperation(5, 3, subtract);  // Output: 2
  executeOperation(5, 3, multiply);  // Output: 15
  executeOperation(5, 6, (x, y) => x - y);  // Output: -1

}
