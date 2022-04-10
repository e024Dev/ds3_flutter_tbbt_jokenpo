abstract class Jogada {
  String mensagem = '';
  Resultado resultado = Resultado.empatou;

  String getTipo();

  Map<String, String> executar(TipoJogada computador);
}

enum Resultado { empatou, venceu, perdeu }

enum TipoJogada { papel, tesoura, pedra, lagarto, spock, nenhum }
