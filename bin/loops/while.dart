import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  int contador = 0;
  int total = 10;
  while (contador <= total) {
    print(contador);
    contador++;
  }

//Usando o While com opção de entrada
  print("Digite um número ou S para sair: ");
  var entrada = stdin.readLineSync(encoding: utf8);
  double accumulator = 0;
  while (entrada != 'S') {
    double numero = double.parse(entrada!);
    accumulator += numero;
    print("Digite um número ou S para sair: ");
    entrada = stdin.readLineSync(encoding: utf8);
  }
  print(accumulator);
}
