import 'package:ds3_tbbt_flutter_jokenpo/pages/home_page/model/jogada.dart';

class Papel extends Jogada {

  @override
  Map<String, String> executar(JogadaComputador computador) {
    switch (computador) {
      case JogadaComputador.pedra:
        resultado = Resultado.venceu.toString();
        mensagem = 'Papel cobre pedra';
        break;
      case JogadaComputador.spock:
        resultado = Resultado.venceu.toString();
        mensagem = 'Papel refuta Spock!';
        break;
      case JogadaComputador.tesoura:
        resultado = Resultado.perdeu.toString();
        mensagem = 'Tesoura corta papel!';
        break;
      case JogadaComputador.lagarto:
        resultado = Resultado.perdeu.toString();
        mensagem = 'Lagarto come papel!';
        break;
      default:
        resultado = Resultado.empatou.toString();
        mensagem = 'Empatou!';
    }

    return {"resultado": resultado, "mensagem": mensagem};
  }
}
