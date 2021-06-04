void main() {
  ContaCorrente contaAugusto = ContaCorrente();
  ContaCorrente contaAndrielly = ContaCorrente();

  contaAugusto.titular = "Augusto";
  contaAugusto.chequeEspecial = -110.0;

  contaAndrielly.titular = "Andrielly";

  print("Saldo do ${contaAugusto.titular}: ${contaAugusto.saldo}");
  print("Saldo do ${contaAndrielly.titular}: ${contaAndrielly.saldo}");
  bool? sucesso = contaAugusto.transferencia(130.00, contaAndrielly);
  print(sucesso);
  print("Saldo do ${contaAugusto.titular}: ${contaAugusto.saldo}");
  print("Saldo do ${contaAndrielly.titular}: ${contaAndrielly.saldo}");
}

class ContaCorrente {
  late String titular;
  int? agencia = 159;
  int? conta;
  double saldo = 20.0;
  double chequeEspecial = -100;
//=================================VERIFICANDO SALDO=======================

  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print("Saldo insuficiente.");
      return false;
    } else {
      print("Movimentando $valor reais");
      return true;
    }
  }

//========================== TRANSFERENCIA =====================================
  bool? transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorTransferencia)) {
      return false;
    } else {
      this.saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
    }
  }

//============================ SAQUE ===========================================
  bool? saque(double valorDoSaque) {
    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      this.saldo -= valorDoSaque;
      return true;
    }
  }

//================================ DEPOSITO ====================================
  double? deposito(double valorDoDeposito) {
    this.saldo += valorDoDeposito;
    return this.saldo;
  }
}
