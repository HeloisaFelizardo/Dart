import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _name = '';
  String _endereco = '';
  TipoNotificacao _tipoNotificao = TipoNotificacao.nenhum;

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificao;
  }

//Construtor
  Pessoa(String name, String endereco,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}) {
    _name = name;
    _endereco = endereco;
    _tipoNotificao = tipoNotificacao;
  }
//Criando o Map, o mesmo que objeto
  @override
  String toString() {
    return {
      'Nome': _name,
      'Endereço': _endereco,
      'Tipo Notificação': TipoNotificacao
    }.toString();
  }
}
