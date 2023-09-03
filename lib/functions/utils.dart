import 'dart:convert';
import 'dart:io';

String lerEntrada(String texto) {
  print(texto);
  var entrada = stdin.readLineSync(encoding: utf8);
  return entrada!;
}

double lerEntradaDouble(String texto) {
  var numero = double.tryParse(lerEntrada(texto));
  if (numero == null) {
    print("Número informado incorreto, alterando para 0");
    return 0.0;
  } else {
    return numero;
  }
}

double somaLista(List<double> numeros) {
  double accumulator = 0;
  for (var numero in numeros) {
    accumulator = soma(accumulator, numero);
  }
  return accumulator;
}

double soma(double a, double b) {
  return a + b;
}

double subtracao(double a, double b) {
  return a - b;
}

double multiplicacao(double a, double b) {
  return a * b;
}

double divisao(double a, double b) {
  if (b == 0) {
    print('Não é possível dividir por 0');
    exit(0);
  } else {
    return a / b;
  }
}
