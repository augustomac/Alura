import 'dart:io';

/*
Danilo quer fazer um programa para categorizar a altura de pessoas. O programa deve receber a altura de uma pessoa em centímetros e retornar uma das 4 opções:

Se a altura da pessoa for menor que 150 centímetros, ela é pequena.
Se a altura da pessoa for maior ou igual a 150 centímetros e menor que 175 centímetros, ela é média.
Se a altura da pessoa for maior ou igual a 175 centímetros e menor que 195 centímetros, ela é grande.
Se a altura da pessoa for maior que 195 centímetros, ela é gigante.
*/
void main() {
  print("\x1B[2J\x1B[0;0H");

  print("Entre com sua altura em cm");
  String? inp = stdin.readLineSync();
  double altura = double.parse(inp!);

  if (altura >= 195) {
    print("Você é um gigante");
  } else if (altura >= 175 && altura < 195) {
    print("Você é grande");
  } else if (altura >= 150 && altura < 175) {
    print("Você é média");
  } else {
    print("Você é pequena");
  }
}
