void main() {
  print("Testando condicionais.");

  int idade = 25;
  //boleados só recebem true ou false
  //true -> verdade
  //false -> falso

  bool maior_idade = idade >= 18;
  bool acompanhado = false;

  print(maior_idade);
  if (maior_idade) {
    print("Você pode entrar!");
  } else {
    if (acompanhado) {
      print("Você é menor de idade, mas está acompanhado, pode entrar!");
    } else {
      print("Você não pode entrar!");
    }
  }
}
