import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  String opcao = '';
  double accumulator = 0;
  do {
    print("Digite um número ou S para sair: ");
    var entrada = stdin.readLineSync(encoding: utf8);
    opcao = entrada!;
    var numero = double.tryParse(opcao);
    if (numero != null) {
      accumulator += numero;
    }
  } while (opcao != 'S');
  print(accumulator);
}
