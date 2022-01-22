import './player_controller.dart';

class CobrasEscadas {
  static const snakes = [
    {'head': 16, 'tail': 6},
    {'head': 46, 'tail': 25},
    {'head': 49, 'tail': 11},
    {'head': 62, 'tail': 19},
    {'head': 64, 'tail': 60},
    {'head': 74, 'tail': 53},
    {'head': 89, 'tail': 68},
    {'head': 92, 'tail': 88},
    {'head': 95, 'tail': 75},
    {'head': 99, 'tail': 80}
  ];

  static const ladders = [
    {'from': 2, 'to': 38},
    {'from': 7, 'to': 14},
    {'from': 8, 'to': 31},
    {'from': 15, 'to': 26},
    {'from': 28, 'to': 84},
    {'from': 21, 'to': 42},
    {'from': 36, 'to': 44},
    {'from': 51, 'to': 67},
    {'from': 71, 'to': 91},
    {'from': 78, 'to': 98},
    {'from': 87, 'to': 94}
  ];

  static bool isSnake(int position) {
    try {
      return snakes.where((snake) => snake['head'] == position).isNotEmpty;
    } catch (e) {
      // print('isSnake: $e');
      return false;
    }
  }

  static bool isLadder(int position) {
    try {
      return ladders.where((ladder) => ladder['from'] == position).isNotEmpty;
    } catch (e) {
      // print('isLadder: $e');
      return false;
    }
  }

  jogar(int dado1, int dado2, Player player) {
    int posicao = dado1 + dado2;

    if (dado1 == dado2) {} // TODO: duplo dado (bonus)

    if (isSnake(posicao)) {} // TODO: snake (penalty)

    if (isLadder(posicao)) {} // TODO: ladder (bonus)
  }
}
