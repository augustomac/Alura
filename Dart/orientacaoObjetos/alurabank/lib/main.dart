import 'package:alurabank/cliente.dart';

import 'contacorrente.dart';
import 'cliente.dart';

void main() {
  ContaCorrente contaDoAugusto = ContaCorrente();
  ContaCorrente contaDaAndrielly = ContaCorrente();

  Cliente augusto = Cliente();
  augusto.nome = "Augusto";
  augusto.cpf = "000.002.003-00";
  augusto.profissao = "Engenheiro";

  contaDoAugusto.titular = augusto;
  // print("Titular: ${contaDoAugusto.titular.nome}");
  // print("CPF: ${contaDoAugusto.titular.cpf}");
  // print("Profissao: ${contaDoAugusto.titular.profissao}");

  Cliente andrielly = Cliente();
  contaDaAndrielly = andrielly;
}
