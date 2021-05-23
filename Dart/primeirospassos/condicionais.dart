import 'dart:io';

// < significa menor que
// > significa maior que
// ==  dois iguais significa igual a
// <= menor igual
// >= maior igual
void main() {
  print("\x1B[2J\x1B[0;0H");
  print("==== Entre com sua idade! ====");
  String? inp = stdin.readLineSync();
  int idade = int.parse(inp!);

  /*
  if (idade >= 18) {
    print("Você é maior de idade.");
  } else if (idade < 18) {
    print("Você é de menor.");
  }*/
  // FORMA RESUMIDA DO IF
  idade >= 18
  ? print("Você é maior de idade") 
  : print("Você é menor de idade");
}
