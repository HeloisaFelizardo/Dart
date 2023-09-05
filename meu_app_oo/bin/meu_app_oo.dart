import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica('Roberto', 'Rua 1', '2222222');
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica('Ana Lucia', 'Rua 2', '1256713685841',
      tipoNotificacao: TipoNotificacao.email);
  print(pessoaJuridica1);
}
