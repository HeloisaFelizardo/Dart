void main(List<String> arguments) {
  printName('Heloisa');
  printName('Jose', sobrenome: 'Silva');
}

void printName(String name, {String? sobrenome}) {
  print('My name is $name');
  if (sobrenome != null) {
    print('My last name is $sobrenome');
  }
}
