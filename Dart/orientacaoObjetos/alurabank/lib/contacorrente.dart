import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  int? agencia = 159;
  late int conta;
  double saldo = 20;
  double chequeEspecial = 100;

// ============= VERIFICANDO SALDO =============
  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print("Saldo insuficiente.");
      return false;
    } else {
      print("Valor movimentado R\$ $valor de reais");
      return true;
    }
  }
// =============

// ============= DEPOSITO =============
  double? deposito(double valorDeDeposito) {
    this.saldo += valorDeDeposito;
    return this.saldo;
  }
// =============

// ============= TRANSFERENCIA =============
  bool? transferencia(
      double valorDeTransferencia, ContaCorrente contaDeDestino) {
    if (!verificaSaldo(valorDeTransferencia)) {
      return false;
    } else {
      this.saldo -= valorDeTransferencia;
      contaDeDestino.deposito(valorDeTransferencia);
    }
  }
// =============

// ============= SAQUE =============
  bool? saque(double valorDeSaque) {
    if (!verificaSaldo(valorDeSaque)) {
      return false;
    } else {
      this.saldo -= valorDeSaque;
      return true;
    }
  }
// =============
}