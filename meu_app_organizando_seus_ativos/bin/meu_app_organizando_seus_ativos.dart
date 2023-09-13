import 'dart:convert';
import 'dart:io';

import 'package:meu_app_organizando_seus_ativos/organizar_ativos.dart'; // Importe o arquivo

void main(List<String> arguments) {
  // Solicitar o número de ativos ao usuário
  print("Digite a quantidade de ativos:");
  var quantidadeAtivos = int.parse(stdin.readLineSync(encoding: utf8)!);

  List<String> ativos = [];

  // Solicitar os códigos dos ativos ao usuário
  for (var i = 0; i < quantidadeAtivos; i++) {
    print("Digite ativo ${i + 1}:");
    var codigoAtivo = stdin.readLineSync(encoding: utf8)!;
    ativos.add(codigoAtivo);
  }

  // Chame a função para ordenar os ativos
  ativos = ordenarAtivos(ativos);

  // Imprimir a lista de ativos ordenada
  print("Ativos em ordem alfabética:");
  for (var ativo in ativos) {
    print(ativo);
  }
}
