import 'package:flutter/material.dart';

import 'modules/splash/splash_page.dart';
import 'modules/home/home_page.dart';
import 'modules/game/game_page.dart';

import 'shared/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake and Ladder',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/game': (context) => const GamePage(),
      },
    );
  }
}
