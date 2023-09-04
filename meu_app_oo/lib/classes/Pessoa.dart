class Pessoa {
  String _name = '';
  String _endereco = '';

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

//Criando o Map, o mesmo que objeto
  @override
  String toString() {
    return {'Nome': _name, 'Endereço': _endereco}.toString();
  }
}
