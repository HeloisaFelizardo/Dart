void main(List<String> arguments) {
  printHelloWorld();

  printName('Heloisa');

  int number = returnNumber();
  print(number);

  int resultado = sum(1, 2);
  print(resultado);
}

void printHelloWorld() {
  print('Hello World!');
}

void printName(String name) {
  print('My name is $name');
}

int returnNumber() {
  return 30;
}

int sum(int a, int b) {
  return (a + b) * 50;
}
