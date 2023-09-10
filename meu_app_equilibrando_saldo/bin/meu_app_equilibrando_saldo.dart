import 'dart:io';

import 'package:meu_app_equilibrando_saldo/meu_app_equilibrando_saldo.dart';

void main(List<String> arguments) {
  print('Equilibrando o saldo');

  print('Informe o saldo atual: ');
  double saldoAtual = double.parse(stdin.readLineSync()!);
  print('Informe o valor depositado: ');
  double valorDeposito = double.parse(stdin.readLineSync()!);
  print('Informe o valor a ser retirado da conta: ');
  double valorRetirada = double.parse(stdin.readLineSync()!);

  // Calcula o saldo atualizado de acordo com a descrição deste desafio.
  double novoSaldo = saldoAtualizado(saldoAtual, valorDeposito, valorRetirada);

  // Imprime o saldo atualizado com uma casa decimal.
  print('Saldo atualizado na conta: ${novoSaldo.toStringAsFixed(2)}');
}
