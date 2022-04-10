import 'jogada.dart';

class Lagarto extends Jogada {
  @override
  Map<String, String> executar(TipoJogada? computador) {
    switch (computador) {
      case TipoJogada.papel:
        resultado = Resultado.venceu;
        mensagem = 'Lagarto come papel!';
        break;
      case TipoJogada.spock:
        resultado = Resultado.venceu;
        mensagem = 'Lagarto envenena Spock!';
        break;
      case TipoJogada.pedra:
        resultado = Resultado.perdeu;
        mensagem = 'Pedra esmaga lagarto!';
        break;
      case TipoJogada.tesoura:
        resultado = Resultado.perdeu;
        mensagem = 'Tesoura decapita lagarto!';
        break;
      default:
        resultado = Resultado.empatou;
        mensagem = 'Empatou!';
    }

    return {'resultado': resultado.name, 'mensagem': mensagem};
  }

  @override
  String getTipo() {
    return TipoJogada.lagarto.name;
  }
}
