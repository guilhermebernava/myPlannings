import 'package:flutter/material.dart';
import 'modules/home/home.dart';
import 'modules/splash/splash.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "MyPlannings",
        theme: ThemeData(
          primaryColor: Colors.amber,
          primarySwatch: Colors.deepOrange,
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => Splash(),
          "/home": (context) => const Home(),
        });
  }
}
