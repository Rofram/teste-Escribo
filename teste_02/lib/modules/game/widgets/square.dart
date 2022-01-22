import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final int id;
  final bool isSnake;
  final bool isLadder;

  const Square({
    Key? key,
    required this.id,
    required this.isSnake,
    required this.isLadder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isSnake
              ? Colors.red
              : isLadder
                  ? Colors.green
                  : Colors.black,
        ),
      ),
      child: Text(
        '$id',
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
