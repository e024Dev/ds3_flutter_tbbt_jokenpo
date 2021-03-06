import 'jogada.dart';

class Papel extends Jogada {
  @override
  Map<String, String> executar(TipoJogada? computador) {
    switch (computador) {
      case TipoJogada.pedra:
        resultado = Resultado.venceu;
        mensagem = 'Papel cobre pedra';
        break;
      case TipoJogada.spock:
        resultado = Resultado.venceu;
        mensagem = 'Papel refuta Spock!';
        break;
      case TipoJogada.tesoura:
        resultado = Resultado.perdeu;
        mensagem = 'Tesoura corta papel!';
        break;
      case TipoJogada.lagarto:
        resultado = Resultado.perdeu;
        mensagem = 'Lagarto come papel!';
        break;
      default:
        resultado = Resultado.empatou;
        mensagem = 'Papel empata com papel!';
    }

    return {'resultado': resultado.name, 'mensagem': mensagem};
  }

  @override
  String getTipo() {
    return TipoJogada.papel.name;
  }
}
