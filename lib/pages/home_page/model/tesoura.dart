import 'jogada.dart';

class Tesoura extends Jogada {
  @override
  Map<String, String> executar(TipoJogada? computador) {
    switch (computador) {
      case TipoJogada.papel:
        resultado = Resultado.venceu;
        mensagem = 'Tesoura corta papel!';
        break;
      case TipoJogada.lagarto:
        resultado = Resultado.venceu;
        mensagem = 'Tesoura decapita lagarto!';
        break;
      case TipoJogada.spock:
        resultado = Resultado.perdeu;
        mensagem = 'Spock esmaga (ou derrete) tesoura!';
        break;
      case TipoJogada.pedra:
        resultado = Resultado.perdeu;
        mensagem = 'Pedra amassa tesoura!';
        break;
      default:
        resultado = Resultado.empatou;
        mensagem = 'Empatou!';
    }

    return {'resultado': resultado.name, 'mensagem': mensagem};
  }

  @override
  String getTipo() {
    return TipoJogada.tesoura.name;
  }
}
