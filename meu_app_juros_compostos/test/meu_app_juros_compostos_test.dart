import 'package:meu_app_juros_compostos/calcular_juros_compostos.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular os juros compostos - Caso de teste 1', () {
    expect(
      calcularJurosCompostos(5000, 0.08, 5),
      closeTo(7346.64, 0.01), // Aceita uma diferença de até 0.01
    );
  });

  test('Calcular os juros compostos - Caso de teste 2', () {
    expect(
      calcularJurosCompostos(1000, 0.06, 3),
      closeTo(1191.02, 0.01),
    );
  });

  test('Calcular os juros compostos - Caso de teste 3', () {
    expect(
      calcularJurosCompostos(20000, 0.04, 10),
      closeTo(29604.89, 0.01),
    );
  });

  test('Calcular os juros compostos - Caso de teste com valor inicial zero',
      () {
    expect(
      calcularJurosCompostos(0, 0.08, 5),
      equals(0),
    );
  });

  test('Calcular os juros compostos - Caso de teste com taxa de juros zero',
      () {
    expect(
      calcularJurosCompostos(5000, 0, 5),
      equals(5000),
    );
  });
}
