import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica('Roberto', 'Rua 1', '2222222',
      tipoNotificacao: TipoNotificacao.pushNotification);
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica('Empresa 1', 'Rua 2', '1256713685841',
      tipoNotificacao: TipoNotificacao.email);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
