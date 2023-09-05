import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = '';

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

//Construtor
  PessoaFisica(String name, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum})
      : super(name, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

//Sobrescreve e imprime os dados de Pessoa Física
  @override
  String toString() {
    return {
      'Nome': getName(),
      'Endereço': getEndereco(),
      'CPF': _cpf,
      'Tipo Notificação': getTipoNotificacao()
    }.toString();
  }
}
