import 'package:meu_app_calculadora_imc/models/console_utils.dart';
import 'package:meu_app_calculadora_imc/models/pessoa.dart';

// Função para calcular a categoria do IMC com base no valor do IMC.
String obterCategoriaIMC(double imc) {
  if (imc < 18.5) {
    return "Abaixo do peso";
  } else if (imc < 24.9) {
    return "Peso normal";
  } else if (imc < 29.9) {
    return "Sobrepeso";
  } else if (imc < 34.9) {
    return "Obesidade Grau 1";
  } else if (imc < 39.9) {
    return "Obesidade Grau 2";
  } else {
    return "Obesidade Grau 3";
  }
}

// Esta função 'execute' é responsável por executar a calculadora de IMC.
void execute() {
  // Imprime uma mensagem de boas-vindas.
  print('Calculadora de IMC');

  // Solicita ao usuário que insira o nome da pessoa.
  String? nome = ConsoleUtils.lerNome('Digite o nome da pessoa');

  // Solicita ao usuário que insira o peso da pessoa em quilogramas.
  double? peso = ConsoleUtils.lerNumeroDecimal("Digite o peso (em kg)");

  // Solicita ao usuário que insira a altura da pessoa em metros.
  double? altura = ConsoleUtils.lerNumeroDecimal("Digite a altura (em metros)");

  // Verifica se o nome, peso e altura são válidos antes de prosseguir.
  if (nome != null && peso != null && altura != null) {
    // Cria uma instância da classe 'Pessoa' com os dados fornecidos.
    Pessoa pessoa = Pessoa(nome, peso, altura);

    // Calcula o IMC da pessoa.
    double imc = pessoa.calcularIMC();

    // Imprime os resultados do cálculo do IMC e a interpretação do resultado.
    print("\nResultado para ${pessoa.getNome()}:");
    print("Peso: ${pessoa.getPeso()} kg");
    print("Altura: ${pessoa.getAltura()} metros");
    print("IMC: ${imc.toStringAsFixed(2)}");

    // Determina a categoria do IMC usando a função 'obterCategoriaIMC' e imprime a categoria.
    String categoriaIMC = obterCategoriaIMC(imc);
    print(categoriaIMC);
  } else {
    // Caso o nome, peso ou altura sejam inválidos ou o usuário saia,
    // imprime uma mensagem informando que os valores fornecidos são inválidos.
    print("Você saiu ou forneceu valores inválidos.");
  }
}
