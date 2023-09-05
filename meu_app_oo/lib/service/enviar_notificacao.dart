import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/implementacao/notificacao_email.dart';
import 'package:meu_app_oo/service/implementacao/notificacao_push.dart';
import 'package:meu_app_oo/service/implementacao/notificacao_sms.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.pushNotification:
        notificacao = NotificacaoPush();
        break;
      case TipoNotificacao.sms:
        notificacao = NotificacaoSMS();
        break;
      default:
        return;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print('Pessoa sem tipo de notificação');
    }
  }
}
