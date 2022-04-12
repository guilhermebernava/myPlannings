class TransactionModel {
  String accountNumber;
  double value;

  TransactionModel(this.accountNumber, this.value);

//cria uma TRANSACTION MODEL de um MAP
  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(map['account_number'], map['value']);
  }

//transforma uma TRANSACTION MODEL em um MAP
  Map<String, dynamic> toMap() =>
      {'account_number': accountNumber, 'value': value};
}
