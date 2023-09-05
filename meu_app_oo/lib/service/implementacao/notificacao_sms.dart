import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print('Enviando SMS para: ${pessoa.getName()}');
  }
}
