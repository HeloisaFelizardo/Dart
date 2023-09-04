import 'package:meu_app_oo/classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = Pessoa();
  p1.setName('Heloisa');
  p1.setEndereco('Rua das Hortências');

  print(p1);
  print(p1.getName());
  print(p1.getEndereco());
}
