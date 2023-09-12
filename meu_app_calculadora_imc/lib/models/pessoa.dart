import 'package:meu_app_calculadora_imc/funcoes.dart' as funcoes;

class Pessoa {
  // Atributos privados para armazenar o nome, peso e altura da pessoa.
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  // Construtor da classe Pessoa.
  Pessoa(String nome, double peso, double altura) {
    // Inicializa os atributos com os valores fornecidos.
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  // Métodos para definir e obter o nome da pessoa.
  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  // Métodos para definir e obter o peso da pessoa.
  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  // Métodos para definir e obter a altura da pessoa.
  void setAltura(double altura) {
    _altura = altura;
  }

  // Método para obter a altura da pessoa formatada com duas casas decimais.
  double getAltura() {
    return double.parse(_altura.toStringAsFixed(2));
  }

  // Método para calcular o IMC da pessoa.
  double calcularIMC() {
    // Chama a função importada para calcular o IMC com o peso e a altura da pessoa.
    return funcoes.calcularIMC(_peso, _altura);
  }
}
