import 'package:flutter/material.dart';
import '../controller/game_controller.dart';
import './square.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 10,
      reverse: true,
      children: List.generate(100, (index) {
        return Center(
          child: Square(
              id: index + 1,
              isLadder: CobrasEscadas.isLadder(index + 1),
              isSnake: CobrasEscadas.isSnake(index + 1)),
        );
      }),
    );
  }
}
