import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _name = '';
  String _endereco = '';
  String _email = '';
  String _celular = '';
  String _token = '';
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

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
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
