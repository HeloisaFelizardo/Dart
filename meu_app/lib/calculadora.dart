import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('Bem vindo a nossa calcuradora!');

  print('Informe o primeiro número: ');
  var entrada = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(entrada!);

  print('Informa o segundo número: ');
  entrada = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(entrada!);

  print('Informe a operação matemática (+, -, *, /): ');
  entrada = stdin.readLineSync(encoding: utf8);
  var operacao = entrada ?? '';

  double resultado = 0;

  switch (operacao) {
    case '+':
      resultado = numero1 + numero2;
      break;
    case '-':
      resultado = numero1 - numero2;
      break;
    case '*':
      resultado = numero1 * numero2;
      break;
    case '/':
      resultado = numero1 / numero2;
      break;
    default:
      print('Operação inválida');
      exit(0);
  }

  print('Operação solicitada: $operacao');
  print('O resultado da operação é: $resultado');
}
