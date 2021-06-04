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
/* void main() {
  //cada objeto cria um hashcode que seria praticamente um "RG" que é único para cada pessoa no dart é igual o hashcode de cada objeto é único e sempre muda em cada execução do programa.
  //variavel conta1 do tipo ContaCorrente
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
*/
//========================== AULA 03 ====================================
void main() {
  ContaCorrente contaAugusto = ContaCorrente();
  ContaCorrente contaAndrielly = ContaCorrente();
  contaAugusto.titular = "Augusto";
  contaAndrielly.titular = "Andrielly";
/*
  print("Saldo do ${contaAugusto.titular}: ${contaAugusto.saldo}");
  contaAugusto.saque(80);
  print("Saldo do ${contaAugusto.titular}: ${contaAugusto.saldo}");

  print("Saldo do ${contaAndrielly.titular}: ${contaAndrielly.saldo}");
  contaAndrielly.saque(180);
  print("Saldo do ${contaAndrielly.titular}: ${contaAndrielly.saldo}");
*/
  print("Saldo do ${contaAugusto.titular}: ${contaAugusto.saldo}");
  print("Saldo do ${contaAndrielly.titular}: ${contaAndrielly.saldo}");
  bool? sucesso = contaAugusto.transferencia(120.00, contaAndrielly);
  print(sucesso);
  print("Saldo do ${contaAugusto.titular}: ${contaAugusto.saldo}");
  print("Saldo do ${contaAndrielly.titular}: ${contaAndrielly.saldo}");
}

class ContaCorrente {
  late String titular;
  late int agencia = 145;
  late int conta;
  double saldo = 20;

/*/void -> é aquilo que não tem retorno é vazio, por exemplo se fosse bool "boolean" retornaria verdadeiro ou falso
*/
  bool? saque(double valorDoSaque) {
    //this -> é para referenciar dentro da classe
    if (this.saldo - valorDoSaque < -100) {
      print("Sem saldo suficiente.");
      return false;
    } else {
      print("Sacando $valorDoSaque reais");
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  double? deposito(double valorDoDeposito) {
    print("Deposito no valor de $valorDoDeposito");
    this.saldo += valorDoDeposito;
    return this.saldo;
  }

  bool? transferencia(double valorDeTransferencia, ContaCorrente contaDestino) {
    if (this.saldo - valorDeTransferencia < -100) {
      print("Saldo insuficiente.");
      return false;
    } else {
      this.saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }
  }
}
