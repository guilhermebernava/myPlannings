import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myplannings/modules/transaction_page/transaction_page_controller.dart';
import 'package:myplannings/widgets/trasaction_widget/transaction_widget.dart';

import '../../theme/AppColors.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({Key? key}) : super(key: key);

  final controller = TransactionPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Transactions",
        style: GoogleFonts.poppins(
          fontSize: 27,
          color: Colors.white,
        ),
      )),
      body: Column(
        children: const [TransactionWidget()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.redirectToCreateTransaction(context),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
