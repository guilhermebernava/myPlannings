import 'package:flutter/material.dart';
import 'package:myplannings/modules/create_transaction/create_transaction.dart';
import 'package:myplannings/modules/transaction_page/transaction_page.dart';
import 'package:myplannings/theme/AppColors.dart';
import 'modules/splash/splash.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "MyPlannings",
        theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            primarySwatch: Colors.lightGreen),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => Splash(),
          "/home": (context) => TransactionPage(),
          "/transactions": (context) => TransactionPage(),
          "/create_transaction": (context) => CreateTransaction(),
        });
  }
}
