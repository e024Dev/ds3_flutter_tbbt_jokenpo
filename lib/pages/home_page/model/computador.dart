import 'dart:math';

import 'jogada.dart';

class Computador {
  static TipoJogada jogar() {
    var random = Random();
    var numero = random.nextInt(5) + 1;

    switch (numero) {
      case 1:
        return TipoJogada.pedra;
      case 2:
        return TipoJogada.papel;
      case 3:
        return TipoJogada.tesoura;
      case 4:
        return TipoJogada.lagarto;
      case 5:
        return TipoJogada.spock;
      default:
        return TipoJogada.nenhum;
    }
  }
}
