import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  double valor;

  Saldo(this.valor);

  void adiciona(double valor) {
    this.valor += valor;

    //avisa que o valor foi alterado
    notifyListeners();
  }

  void diminui(double valor) {
    if (this.valor == 0) {
      return;
    }

    if (this.valor > valor) {
      this.valor -= valor;
    }
    //avisa que o valor foi alterado
    notifyListeners();
    return;
  }

  @override
  String toString() {
    return 'R\$ $valor';
  }
}
