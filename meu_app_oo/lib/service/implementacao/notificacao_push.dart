import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class NotificacaoPush implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print('Enviando PUSH para: ${pessoa.getName()}');
  }
}
