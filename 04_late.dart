late String description;
late int temperature = readThermometer(); // Lazily initialized.
int readThermometer() {
  print("function is done");
  return 37;
}

int? x;
void main() {
  print('temperature is $temperature');

  description = 'Feijoada!';
  print(description);

  x = 25;
  print(x);
}
