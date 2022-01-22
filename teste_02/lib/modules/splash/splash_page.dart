import 'package:flutter/material.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> navigateToHome() async {
      await Future.delayed(const Duration(seconds: 3));
      Navigator.of(context).pushReplacementNamed('/home');
    }

    navigateToHome();

    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Center(
                child: Image.asset(
              AppImages.logo,
              width: 250,
            )),
            Positioned(
              bottom: 20,
              child: Image.asset(
                AppImages.logoEscribo,
                width: 150,
              ),
            )
          ],
        ));
  }
}
