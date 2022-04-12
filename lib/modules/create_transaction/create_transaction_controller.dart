import 'package:flutter/material.dart';

import '../../models/transaction_model.dart';

class CreateTransactionController {
  final formKey = GlobalKey<FormState>();

  void redirectToTransactionPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/transactions");
  }

  String? validateValue(String? value) {
    final isEmpty = value!.isEmpty == true ? 'Please enter some value' : null;

    if (isEmpty != null) return isEmpty;

    final valueToCheck = value.split("\$");

    if (valueToCheck[1] == "0.00") {
      return 'Please enter value greater than R\$0.00';
    }

    return null;
  }

  String? validateAccountNumber(String? value) {
    final isEmpty = value!.isEmpty == true ? 'Please enter some value' : null;

    if (isEmpty != null) return isEmpty;

    final regEx = RegExp(r"^\d{4}-\d{3}");

    if (regEx.hasMatch(value) == false) {
      return "use this format 0000-000";
    }

    return null;
  }

  void save(TransactionModel model) {}

  bool validator() {
    final formState = formKey.currentState;

    if (formState!.validate()) {
      return true;
    }

    return false;
  }
}
