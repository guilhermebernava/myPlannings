import 'package:bytebank/models/transferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lista.dart';

class UltimasTransferencias extends StatelessWidget {
  const UltimasTransferencias({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Ultimas Transferencias",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Consumer<Transferencias>(builder: (context, value, child) {
          final _ultimasTransferencias = value.transferencias.reversed.toList();
          final _quantidade = value.transferencias.length;
          int tamanho = 2;

          if (_quantidade == 0) {
            return SemTransferencia();
          }

          if (_quantidade < 2) {
            tamanho = _quantidade;
          }

          return ListView.builder(
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            itemCount: tamanho,
            itemBuilder: (context, indice) {
              return ItemTransferencia(_ultimasTransferencias[indice]);
            },
          );
        })
      ],
    );
  }
}

class SemTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Voce ainda nao tem transferencias',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
