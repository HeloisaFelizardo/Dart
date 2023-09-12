import 'dart:io';

class ConsoleUtils {
  // Função que fornece uma maneira de ler entrada, permitindo a substituição durante os testes.
  static String? Function() leitor = () => stdin.readLineSync();

  // Função para ler um nome da entrada padrão.
  static String? lerNome(String texto) {
    do {
      try {
        stdout.write("$texto: "); // Exibe o texto fornecido.
        String entrada = leitor() ?? ""; // Lê a entrada do usuário.

        if (entrada.trim().isNotEmpty) {
          return entrada; // Retorna o nome se não estiver vazio.
        } else {
          print(
              "Entrada vazia. Por favor, digite um nome válido."); // Mensagem de erro se o nome estiver vazio.
        }
      } catch (e) {
        print(
            "Erro ao ler a entrada. Tente novamente."); // Tratamento de erro na leitura da entrada.
      }
    } while (true);
  }

  // Função para ler um número decimal da entrada padrão.
  static double? lerNumeroDecimal(String texto) {
    do {
      try {
        stdout.write("$texto: "); // Exibe o texto fornecido.
        String input = leitor() ?? ""; // Lê a entrada do usuário.

        double value =
            double.parse(input); // Converte a entrada para um número decimal.
        return value; // Retorna o valor se for válido.
      } catch (e) {
        print(
            "Valor inválido. Tente novamente."); // Mensagem de erro se o valor for inválido.
      }
    } while (true);
  }
}
