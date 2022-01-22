import 'package:flutter/material.dart';
import 'package:teste_02/shared/theme/app_colors.dart';
import 'package:teste_02/shared/theme/app_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppImages.homeBackground,
              width: width,
              height: height,
              fit: BoxFit.fill,
            ),
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.background.withOpacity(0.6),
                    AppColors.background.withOpacity(0.95),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.05,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AppImages.logo,
                  width: width * 0.9,
                ),
              ),
            ),
            Positioned(
              bottom: height * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/game');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: width * 0.2,
                  child: Image.asset(
                    AppImages.playIcon,
                    width: width * 0.5,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
