# Capturar Estrutura de pastas

Para visualizar a estrutura de pastas de um diretório pelo comando do CMD (Prompt de Comando) no Windows, você pode usar o comando `tree`. O comando `tree` exibe uma representação gráfica da estrutura de pastas e arquivos em um diretório e seus subdiretórios. A sintaxe básica do comando `tree` é a seguinte:

```
tree [unidade:][caminho] [/F] [/A]
```

Aqui está o que cada um desses parâmetros faz:

- `[unidade:][caminho]`: Especifique o caminho para o diretório que você deseja listar. Por padrão, o `tree` irá listar a estrutura de pastas do diretório atual se você não especificar um caminho.

- `/F`: Exibe arquivos nos diretórios, além de listar pastas.

- `/A`: Exibe arquivos e pastas usando caracteres ASCII em vez de caracteres gráficos. Isso pode ser útil se você estiver redirecionando a saída para um arquivo de texto.

Aqui está um exemplo simples de como usar o comando `tree` para listar a estrutura de pastas a partir do diretório atual:

```
tree
```

Se você quiser listar a estrutura de pastas de um diretório específico, basta fornecer o caminho para esse diretório como argumento:

```
tree C:\caminho\para\diretorio
```

Lembre-se de que o comando `tree` é específico para o ambiente Windows. Se você estiver usando um sistema operacional diferente, como o Linux ou o macOS, pode usar o comando `ls` ou `find` para fins semelhantes.

# Executar os arquivos `.dart`

Para executar o arquivo `calculadora.dart` que está na pasta `lib` do seu projeto Dart a partir do Prompt de Comando (CMD), siga estes passos:

1. Abra o Prompt de Comando do Windows.

2. Navegue para o diretório do seu projeto Dart, usando o comando `cd` (Change Directory). No seu caso, o diretório parece ser `D:\DEV\DART\MEU_APP`. Você pode fazer isso da seguinte maneira:

```
cd D:\DEV\DART\MEU_APP
```

3. Agora, você está no diretório do seu projeto. Para executar o arquivo `calculadora.dart` que está na pasta `lib`, você pode usar o comando `dart` seguido do caminho para o arquivo. Por exemplo:

```
dart lib/calculadora.dart
```

Isso irá executar o arquivo `calculadora.dart` usando o Dart VM e você verá a saída no Prompt de Comando. Certifique-se de que o Dart SDK esteja instalado e configurado corretamente no seu sistema antes de executar o comando.
