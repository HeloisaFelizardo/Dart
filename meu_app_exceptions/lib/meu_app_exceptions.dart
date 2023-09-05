import 'package:meu_app_exceptions/models/aluno.dart';
import 'package:meu_app_exceptions/models/utils.dart';

void execute() {
  print('Bem vindo ao Sistema de notas');

  String nome = ConsoleUtils.lerStringComTexto('Digite o nome do aluno');
  var aluno = Aluno(nome);
  try {
    double numero = double.parse(nome!);
    print(numero);
  } catch (e) {
    print('Número inválido: $nome');
  } finally {
    print('Executando finally');
  }
}
