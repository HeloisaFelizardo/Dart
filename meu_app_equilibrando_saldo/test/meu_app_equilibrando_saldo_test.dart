import 'package:meu_app_equilibrando_saldo/meu_app_equilibrando_saldo.dart'
    as app;
import 'package:test/test.dart';

void main() {
  test('Calcula o saldo atualizado', () {
    expect(app.saldoAtualizado(1000, 500, 200), equals(1300));
  });
}
