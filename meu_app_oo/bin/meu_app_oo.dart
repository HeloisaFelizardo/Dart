import 'package:meu_app_oo/classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa();
  p1.setName('Heloisa');
  p1.setEndereco('Rua das Hortências');

  print(p1.getName());
  print(p1.getEndereco());
}
