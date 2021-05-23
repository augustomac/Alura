void main() {
  print("Testando condicionais");

  int idade = 16;
  bool acompanhado = false;
// && significa "e"
// || significa "ou"

  if (idade >= 16 || idade >= 10 && acompanhado) {
    print("Você pode entrar!");
  } else {
    print("Você não pode entrar!");
  }
}
