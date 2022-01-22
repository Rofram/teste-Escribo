import 'dart:math';

class Player {
  String name;
  String image;
  int? position = 1;
  bool? isWinner = false;
  bool? isLoser = false;

  Player({
    required this.name,
    required this.image,
    this.position,
    this.isWinner,
    this.isLoser,
  });

  jogarDados() {
    return [Random().nextInt(6) + 1, Random().nextInt(6) + 1];
  }
}
