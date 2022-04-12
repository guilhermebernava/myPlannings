import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text("Guilherme"),
        subtitle: Text("2712612-0"),
        trailing: Text(
          "- R\$ 10,00",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
