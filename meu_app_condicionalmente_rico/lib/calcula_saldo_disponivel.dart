// calcula_saldo_disponivel.dart

// Esta função recebe o saldo total da conta bancária e o valor do saque como argumentos.
double calculaSaldoDisponivel(double saldoTotal, double valorSaque) {
  // Verifica se o valor do saque é menor ou igual ao saldo total.
  if (saldoTotal >= valorSaque) {
    // Se o saldo for suficiente, subtrai o valor do saque do saldo total.
    var saldoDisponivel = saldoTotal - valorSaque;
    return saldoDisponivel; // Retorna o novo saldo disponível.
  } else {
    // Se o saldo for insuficiente, retorna -1 para indicar que o saque não é possível.
    return -1;
  }
}
