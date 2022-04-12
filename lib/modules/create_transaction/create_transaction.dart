import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myplannings/models/transaction_model.dart';
import 'package:myplannings/modules/create_transaction/create_transaction_controller.dart';
import 'package:myplannings/widgets/input_form/input_form.dart';

class CreateTransaction extends StatefulWidget {
  CreateTransaction({Key? key}) : super(key: key);

  final controller = CreateTransactionController();

  @override
  State<CreateTransaction> createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  final valueController = TextEditingController();

  final accountNumberController = TextEditingController(text: "0000-000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () =>
                widget.controller.redirectToTransactionPage(context),
            color: Colors.white,
          ),
          title: Text(
            "Create Transactions",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
      body: Column(
        children: [
          Form(
            key: widget.controller.formKey,
            child: Column(
              children: [
                InputForm(
                  icon: Icons.monetization_on,
                  placeHolder: "Value",
                  keyboardType: TextInputType.number,
                  controller: valueController,
                  validator: widget.controller.validateValue,
                  hint: "R\$ 0.00",
                  maxChar: 100000,
                ),
                InputForm(
                  icon: Icons.co_present,
                  placeHolder: "Account Number",
                  keyboardType: TextInputType.number,
                  controller: accountNumberController,
                  validator: widget.controller.validateAccountNumber,
                  hint: '0000-000',
                  maxChar: 8,
                ),
                ElevatedButton(
                    onPressed: () {
                      final isCorrect = widget.controller.validator();

                      if (isCorrect) {
                        widget.controller.save(
                          TransactionModel(
                            accountNumberController.text,
                            double.parse(
                              valueController.text,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text("SUBMIT"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
