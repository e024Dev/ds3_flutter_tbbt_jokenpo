abstract class Jogada {
  String resultado = "";
  String mensagem = "";

  Map<String, String> executar(JogadaComputador computador);
}

enum Resultado { empatou, venceu, perdeu }

enum JogadaComputador { papel, tesoura, pedra, lagarto, spock }
