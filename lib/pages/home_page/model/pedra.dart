import 'jogada.dart';

class Pedra extends Jogada {
  @override
  Map<String, String> executar(TipoJogada? computador) {
    switch (computador) {
      case TipoJogada.lagarto:
        resultado = Resultado.venceu;
        mensagem = 'Pedra esmaga lagarto!';
        break;
      case TipoJogada.tesoura:
        resultado = Resultado.venceu;
        mensagem = 'Pedra amassa tesoura!';
        break;
      case TipoJogada.spock:
        resultado = Resultado.perdeu;
        mensagem = 'Spock vaporiza pedra';
        break;
      case TipoJogada.papel:
        resultado = Resultado.perdeu;
        mensagem = 'Papel cobre pedra!';
        break;
      default:
        resultado = Resultado.empatou;
        mensagem = 'Empatou!';
    }

    return {'resultado': resultado.name, 'mensagem': mensagem};
  }

  @override
  String getTipo() {
    return TipoJogada.pedra.name;
  }
}
