import 'dart:io';

void main() {
  bool condicao = true;

  while (condicao) {
    print(
        "====Entre com o valor para calcular a tabuado ou digite sair para terminar.");
    String? entrada = stdin.readLineSync();
    if (entrada == "sair") {
      condicao = false;
      print("Programa encerrado");
    } else {
      print("\x1B[2J\x1B[0;0H");
      int numero = int.parse(entrada!);
      for (int contador = 1; contador <= 10; contador++) {
        int resultado = numero * contador;
        print("$numero * $contador = $resultado");
      }
    }
  }
}
