import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('Informa a primeira nota: ');
  var entrada = stdin.readLineSync(encoding: utf8);
  var nota1 = double.parse(entrada!);

  print('Informa a segunda nota: ');
  entrada = stdin.readLineSync(encoding: utf8);
  var nota2 = double.parse(entrada!);

  print(nota1);
  print(nota2);

  var media = (nota1 + nota2) / 2;

  if (media >= 7) {
    print('O aluno passou com a nota: $media');
  } else if (media >= 5) {
    print('O aluno está de recuperação com a nota: $media');
  } else {
    print('O aluno reprovou com a nota: $media');
  }
}
