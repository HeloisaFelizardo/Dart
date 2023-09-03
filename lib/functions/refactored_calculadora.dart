import 'dart:io';

import 'package:meu_app/functions/utils.dart' as utils;

void main(List<String> arguments) {
  print('Bem vindo a nossa calcuradora!');

  var a = utils.lerEntradaDouble('Informe o primeiro número: ');

  var b = utils.lerEntradaDouble('Informa o segundo número: ');

  var operacao =
      utils.lerEntrada('Informe a operação matemática (+, -, *, /): ');

  calcular(operacao, a, b);
}

void calcular(String operacao, double a, double b) {
  double resultado = 0;

  switch (operacao) {
    case '+':
      resultado = utils.soma(a, b);
      break;
    case '-':
      resultado = utils.subtracao(a, b);
      break;
    case '*':
      resultado = utils.multiplicacao(a, b);
      break;
    case '/':
      resultado = utils.divisao(a, b);
      break;
    default:
      print('Operação inválida');
      exit(0);
  }

  print('Operação solicitada: $operacao');
  print('O resultado da operação é: $resultado');
}
