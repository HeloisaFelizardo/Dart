import 'package:meu_app/functions/utils.dart' as utils;

void main(List<String> arguments) {
  var entrada = utils.lerEntrada("Digite um número ou S para sair: ");

  List<double> numeros = [];
  while (entrada != 'S') {
    numeros.add(double.parse(entrada));
    entrada = utils.lerEntrada("Digite um número ou S para sair: ");
  }
  print(utils.somaLista(numeros));
}
