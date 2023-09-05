import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = '';

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

//Construtor
  PessoaJuridica(String name, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum})
      : super(name, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

//Sobrescreve e imprime os dados de Pessoa Juridica
  @override
  String toString() {
    return {
      'Nome': getName(),
      'Endereço': getEndereco(),
      'CNPJ': _cnpj,
      'Tipo Notificação': getTipoNotificacao()
    }.toString();
  }
}
