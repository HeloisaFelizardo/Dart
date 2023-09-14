import 'package:meu_app_grande_deposito/deposito.dart';
import 'package:test/test.dart';

void main() {
  test('Teste simples de depósito', () {
    final banco = BancoXYZ();
    expect(() => banco.deposito(), returnsNormally);
  });
}
