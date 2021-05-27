/*void main() {
  /*/ ContaCorrente será usada como tipo de variavel/instancia
  ContaCorrente contadaAmanda = ContaCorrente();
  //precisa iniciar ela com ContaCorrente(), para puxar os atributos
  contadaAmanda.titular = "Amanda";
  contadaAmanda.agencia = 123;
  contadaAmanda.conta = 1;

  print("Titular: ${contadaAmanda.titular}");
  print("Saldo: ${contadaAmanda.saldo}");

  ContaCorrente contaAugusto = ContaCorrente();
  contaAugusto.titular = "Augusto Silva";
  contaAugusto.agencia = 123;
  contaAugusto.conta = 2;

  print("Titular: ${contaAugusto.titular}");
  print("Saldo: ${contaAugusto.saldo}");
}


Class ContaCorrente1 {
  late String titular;
  late int agencia;
  late int conta;
  double saldo = 30.0;
*/







}

*/
//====================AULA 02=======================
void main() {
  //cada objeto cria um hashcode que seria praticamente um "RG" que é único para cada pessoa no dart é igual o hashcode de cada objeto é único e sempre muda em cada execução do programa.
  ContaCorrente conta1 = ContaCorrente();
  ContaCorrente conta2 = ContaCorrente();

  conta1.titular = "Augusto";
  conta1.agencia = 123;
  conta1.conta = 1;
  conta1 = conta2;
  print(conta1.hashCode);

  conta2.titular = "Andrielly";
  conta2.agencia = 123;
  conta2.conta = 1;
  print(conta2.hashCode);

//mas se atribuir um objeto dentro de outro o hashcode sera igual

  conta1 = conta2;

  print(conta1.hashCode);
}

class ContaCorrente {
  late String titular;
  late int conta;
  late int agencia;
  double saldo = 0.0;
}
