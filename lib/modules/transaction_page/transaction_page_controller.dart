import 'package:flutter/material.dart';

class TransactionPageController {
  void redirectToCreateTransaction(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/create_transaction");
  }
}
