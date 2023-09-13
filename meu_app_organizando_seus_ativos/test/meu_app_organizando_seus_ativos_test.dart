import 'package:meu_app_organizando_seus_ativos/organizar_ativos.dart'; // Importe o arquivo
import 'package:test/test.dart';

void main() {
  test('Ordenar Ativos', () {
    // Defina uma lista de ativos desordenados
    List<String> ativosDesordenados = [
      'Financiamento de Imovel',
      'Deposito',
      'Reservas Bancarias',
    ];

    // Chame a função para ordenar os ativos
    List<String> ativosOrdenados = ordenarAtivos(ativosDesordenados);

    // Defina a lista esperada de ativos ordenados
    List<String> ativosEsperados = [
      'Deposito',
      'Financiamento de Imovel',
      'Reservas Bancarias',
    ];

    // Use o 'expect' para verificar se os ativos estão corretamente ordenados
    expect(ativosOrdenados, equals(ativosEsperados));
  });
}
