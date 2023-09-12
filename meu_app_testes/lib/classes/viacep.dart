import 'dart:convert';

import 'package:http/http.dart' as http;

class ViaCep {
  Future<Map<dynamic, dynamic>> retornarCEP(String cep) async {
    var url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    var response = await http.get(url);
    var decodeResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    print(decodeResponse);
    return decodeResponse;
  }
}
