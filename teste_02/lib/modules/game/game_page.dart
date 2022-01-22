import 'package:flutter/material.dart';

import './widgets/board.dart';

import '../../shared/theme/app_images.dart';
import '../../shared/theme/app_colors.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 16,
                right: 16,
                bottom: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Positioned(
                              left: 20,
                              child: Container(
                                  width: width * 0.35,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: AppColors.shape,
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.shape,
                                image: const DecorationImage(
                                  image: AssetImage(AppImages.player1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Positioned(
                              right: 20,
                              child: Container(
                                  width: width * 0.35,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: AppColors.shape,
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.shape,
                                image: const DecorationImage(
                                  image: AssetImage(AppImages.player2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
