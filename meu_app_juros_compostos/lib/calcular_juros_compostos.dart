double calcularJurosCompostos(
    double valorInicial, double taxaJuros, int periodo) {
  for (int i = 1; i <= periodo; i++) {
    // Calcula os juros compostos para um período
    double juros = valorInicial * taxaJuros;

    // Atualiza o valor inicial para o próximo período
    valorInicial += juros;
  }

  // Retorna o valor final após todos os períodos
  return valorInicial;
}
