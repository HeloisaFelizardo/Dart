import 'dart:io';

class BancoXYZ {
  double saldoTotal = 0.0;

  void deposito() {
    print("Bem-vindo ao Banco XYZ!");

    while (true) {
      print("Digite o valor do depósito (ou digite '0' para encerrar):");
      double? valor = double.tryParse(lerEntrada() ?? '');

      if (valor == null) {
        exibirSaida("Valor inválido! Digite um número válido.");
        continue;
      }

      if (valor == 0) {
        exibirSaida("Encerrando o programa...");
        break;
      }

      if (valor > 0) {
        saldoTotal += valor;
        exibirSaida('Depósito realizado com sucesso!');
        exibirSaida('Saldo atual: R\$ ${saldoTotal.toStringAsFixed(2)}');
      } else {
        exibirSaida('Valor inválido! Digite um valor maior que zero.');
      }
    }
  }

  // Funções para leitura e exibição de entrada/saída
  String? lerEntrada() => stdin.readLineSync();
  void exibirSaida(String mensagem) => print(mensagem);
}
