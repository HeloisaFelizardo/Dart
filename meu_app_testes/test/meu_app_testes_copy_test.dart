import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcula o valor do produto com desconto sem percentual', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test(
      'Calcula o valor do produto com desconto sem percentual passando o valor do produto zerado',
      () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcula o valor do produto com desconto com percentual', () {
    expect(app.calcularDesconto(1000, 15, true), equals(850));
  });

  test('Calcula o valor do produto com desconto zerado com percentual', () {
    expect(() => app.calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group('Calcula o valor do produto com desconto', () {
    var valuesToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(values['valor'].toString()),
                double.parse(values['desconto'].toString()),
                values['percentual'] == true),
            equals(expected));
      });
    });
  });

  group(
      'Calcula o valor do produto informando valores zerados, deve gerar erro',
      () {
    var valuesToTest = {
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true},
    };
    for (var values in valuesToTest) {
      test('Entrada: $values ', () {
        expect(
            () => app.calcularDesconto(
                double.parse(values['valor'].toString()),
                double.parse(values['desconto'].toString()),
                values['percentual'] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });
}
