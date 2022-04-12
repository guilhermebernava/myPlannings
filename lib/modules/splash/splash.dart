import 'package:flutter/material.dart';
import 'package:myplannings/modules/splash/splash_controller.dart';
import '../../theme/AppColors.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  final controller = SplashController();

  @override
  Widget build(BuildContext context) {
    controller.redirectToHome(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
          child: Image.asset(
        "assets/images/LOGO_FULL.png",
      )),
    );
  }
}
