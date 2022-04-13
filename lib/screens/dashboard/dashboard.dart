import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencia/ultimas.dart';
import 'package:flutter/material.dart';
import '../transferencia/formulario.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bytebank'),
        ),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SaldoCard(),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                //consegue acesso a CLASSE SINGLETON e alterar o valor dele
                //em tela, LEMBRANDO que para alterar o valor no visual
                //devemos colocar o NotifierListener dentro da CLASSE.
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormularioTransferencia(),
                      ),
                    );
                  },
                  child: Text("Criar Transferencia"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormularioDeposito(),
                      ),
                    );
                  },
                  child: Text("Receber Déposito"),
                ),
              ],
            ),
            UltimasTransferencias(),
          ],
        ));
  }
}
