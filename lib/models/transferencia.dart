class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(
    this.valor,
    this.numeroConta,
  );

  String toStringValor() {
    return 'valor: R\$$valor';
  }

  String toStringConta() {
    return 'numero da conta: $numeroConta';
  }
}
