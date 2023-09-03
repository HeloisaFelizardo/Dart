import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  String texto = 'Meu primeiro bloco for';
  for (var i = 0; i <= texto.length - 1; i++) {
    print(texto[i]);
  }

//Lista nomes
  List<String> listaNomes = ['Ana', 'José', 'Marcos'];
  for (var i = 0; i <= listaNomes.length - 1; i++) {
    print(listaNomes[i]);
  }

//Soma os números
  int resultado = 0;
  int quantidade = 0;
  print('Informe a quantidade de números: ');
  var entrada = stdin.readLineSync(encoding: utf8);
  quantidade = int.parse(entrada!);

  for (var i = 0; i <= quantidade; i++) {
    print('Informe o número: ');
    entrada = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(entrada!);
    resultado += numero;
    print('$i - $resultado');
  }
  print(resultado);
}
