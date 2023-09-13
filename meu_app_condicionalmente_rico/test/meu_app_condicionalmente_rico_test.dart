import 'package:meu_app_condicionalmente_rico/calcula_saldo_disponivel.dart';
import 'package:test/test.dart'; // Importe a biblioteca de testes

void main() {
  // Teste para verificar se o saque é realizado com sucesso
  test('Saque bem-sucedido', () {
    expect(calculaSaldoDisponivel(1000, 200), equals(800));
    expect(calculaSaldoDisponivel(500, 300), equals(200));
  });

  // Teste para verificar se o saque não é realizado devido a saldo insuficiente
  test('Saldo insuficiente', () {
    expect(calculaSaldoDisponivel(100, 200), equals(-1));
    expect(calculaSaldoDisponivel(0, 100), equals(-1));
  });

  // Teste para verificar se o saque de valor igual ao saldo esvazia a conta
  test('Saque igual ao saldo', () {
    expect(calculaSaldoDisponivel(100, 100), equals(0));
    expect(calculaSaldoDisponivel(500, 500), equals(0));
  });

  // Teste para verificar que a função lida corretamente com valores negativos
  test('Valores negativos', () {
    expect(calculaSaldoDisponivel(-100, 50), equals(-1));
    expect(calculaSaldoDisponivel(100, -50), equals(-1));
  });
}
