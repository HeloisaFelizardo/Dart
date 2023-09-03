void main(List<String> arguments) {
  printData('Meu texto');
  printData(soma(1, 2).toString());
}

void printData(String texto) => print(texto);

int soma(int a, int b) => a + b;
