import 'package:meu_app_calculadora_imc/funcoes.dart';
import 'package:meu_app_calculadora_imc/meu_app_calculadora_imc.dart';
import 'package:meu_app_calculadora_imc/models/console_utils.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular o imc', () {
    // Teste 1: Verificar o cálculo do IMC com valores conhecidos
    expect(
        calcularIMC(65, 1.50), closeTo(28.89, 0.01)); // Margem de erro de 0.01
  });

  test('Teste de leitura de nome', () {
    // Defina uma função de leitura personalizada para simular a entrada do usuário
    ConsoleUtils.leitor = () => 'João';

    // Execute a função que lê o nome
    final nome = ConsoleUtils.lerNome('João');

    // Verifique se o resultado é o esperado
    expect(nome, 'João');
  });

  test('Teste de categoria de IMC', () {
    // Teste 2: Verificar a categoria do IMC para um valor específico
    expect(obterCategoriaIMC(28.89), 'Sobrepeso');
  });
}
