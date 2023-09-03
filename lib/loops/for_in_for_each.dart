void main(List<String> arguments) {
  List<int> numeros = [1, 3, 5, 78, 45, 24, 56, 14, 69];
  int acumulador = 0;
  for (var numero in numeros) {
    acumulador += numero;
    print(numero);
  }
  print('A soma de todos os números é: $acumulador');

  List<String> letras = ['A', 'B', 'G', 'H', 'K', 'M'];
  for (var letra in letras) {
    print(letra);
  }

  for (var letra in letras) {
    print(letra);
  }
}
