import 'dart:io';

import 'package:meu_app_condicionalmente_rico/calcula_saldo_disponivel.dart';

void main(List<String> arguments) {
  // Entrada de dados para o saldo total
  double? saldoTotal; // Variável para armazenar o saldo total
  while (true) {
    print('Digite o valor do seu Saldo Total: ');
    saldoTotal = double.tryParse(stdin
        .readLineSync()!); // Lê e converte a entrada do usuário para um número de ponto flutuante

    if (saldoTotal != null && saldoTotal >= 0.0) {
      break; // Sai do loop se o valor for válido e não negativo
    } else {
      print(
          'Valor inválido. Por favor, insira um valor não negativo.'); // Mensagem de erro se a entrada for inválida
    }
  }

  // Entrada de dados para o valor do saque
  double? valorSaque; // Variável para armazenar o valor do saque
  while (true) {
    print('Digite o valor do Saque:');
    valorSaque = double.tryParse(stdin
        .readLineSync()!); // Lê e converte a entrada do usuário para um número de ponto flutuante

    if (valorSaque != null && valorSaque >= 0.0) {
      break; // Sai do loop se o valor for válido e não negativo
    } else {
      print(
          'Valor inválido. Por favor, insira um valor não negativo.'); // Mensagem de erro se a entrada for inválida
    }
  }

  double novoSaldo = calculaSaldoDisponivel(
      saldoTotal, valorSaque); // Chama a função para calcular o novo saldo

  if (novoSaldo != -1.0) {
    print(
        'Saque realizado com sucesso! Novo saldo: ${novoSaldo.toStringAsFixed(2)}'); // Exibe uma mensagem de sucesso com o novo saldo formatado com duas casas decimais
  } else {
    print(
        'Saldo insuficiente. Saque não realizado!'); // Exibe uma mensagem de saldo insuficiente se o saque não for possível
  }
}
