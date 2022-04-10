import 'jogada.dart';

class Spock extends Jogada {
  @override
  Map<String, String> executar(TipoJogada? computador) {
    switch (computador) {
      case TipoJogada.tesoura:
        resultado = Resultado.venceu;
        mensagem = 'Spock esmaga (ou derrete) tesoura!';
        break;
      case TipoJogada.pedra:
        resultado = Resultado.venceu;
        mensagem = 'Spock vaporiza pedra!';
        break;
      case TipoJogada.lagarto:
        resultado = Resultado.perdeu;
        mensagem = 'Lagarto envenena Spock!';
        break;
      case TipoJogada.papel:
        resultado = Resultado.perdeu;
        mensagem = 'Papel refuta Spock!';
        break;
      default:
        resultado = Resultado.empatou;
        mensagem = 'Empatou!';
    }

    return {'resultado': resultado.name, 'mensagem': mensagem};
  }

  @override
  String getTipo() {
    return TipoJogada.spock.name;
  }
}
