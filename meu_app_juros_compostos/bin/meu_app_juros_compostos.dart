import 'dart:io';

import 'package:meu_app_juros_compostos/calcular_juros_compostos.dart';

void main(List<String> arguments) {
  print("Digite o valor inicial do investimento:");
  var valorInicial = double.parse(stdin.readLineSync()!);

  print("Digite a taxa de juros anual (por exemplo, 5% como 0.05):");
  var taxaJuros = double.parse(stdin.readLineSync()!);

  print("Digite o período em anos:");
  var periodo = int.parse(stdin.readLineSync()!);

  // Chama a função calcularJurosCompostos para calcular o valor final
  var valorFinal = calcularJurosCompostos(valorInicial, taxaJuros, periodo);

  print("Valor final do investimento: R\$ ${valorFinal.toStringAsFixed(2)}");
}
