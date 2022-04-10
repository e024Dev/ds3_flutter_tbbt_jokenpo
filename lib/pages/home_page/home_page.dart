import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'model/computador.dart';
import 'model/jogada.dart';
import 'model/lagarto.dart';
import 'model/papel.dart';
import 'model/pedra.dart';
import 'model/spock.dart';
import 'model/states.dart';
import 'model/tesoura.dart';
import 'widgets/home_page_widgets.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconData iconUserPlay = FontAwesomeIcons.question,
      iconComputerPlay = FontAwesomeIcons.question,
      iconStatus = FontAwesomeIcons.question;

  String statusJogo = 'Sua joagada aparecerá aqui!';
  bool finalidado = false;

  var propriedades = PropriedadesPagina(
      iconeJogador: FontAwesomeIcons.question,
      iconeJogadaCumpotador: FontAwesomeIcons.question,
      iconeStatusJogada: FontAwesomeIcons.question,
      statusJogo: 'Sua joagada aparecerá aqui!',
      finalidado: false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              reiniciar();
            },
            icon: const Icon(Icons.restart_alt),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: double.infinity),
                Icon(
                  iconStatus,
                  size: 48,
                  color: Colors.lightGreen,
                ),
                CardWidget(
                  tamanho: 75,
                  icone: iconComputerPlay,
                  texto: 'Computador',
                ),
                CardWidget(
                  tamanho: 150,
                  icone: iconUserPlay,
                  texto: statusJogo,
                ),
              ],
            ),
          ),
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              ButtonWidget(
                texto: 'Pedra',
                tamanho: 36,
                icone: FontAwesomeIcons.handFist,
                jogar: () {
                  jogar(Pedra());
                },
              ),
              ButtonWidget(
                texto: 'Papel',
                tamanho: 36,
                icone: FontAwesomeIcons.solidHand,
                jogar: () {
                  jogar(Papel());
                },
              ),
              ButtonWidget(
                texto: 'Tesoura',
                tamanho: 36,
                icone: FontAwesomeIcons.solidHandPeace,
                jogar: () {
                  jogar(Tesoura());
                },
              ),
              ButtonWidget(
                texto: 'Lagarto',
                tamanho: 36,
                icone: FontAwesomeIcons.solidHandLizard,
                jogar: () {
                  jogar(Lagarto());
                },
              ),
              ButtonWidget(
                texto: 'Spock',
                tamanho: 36,
                icone: FontAwesomeIcons.solidHandSpock,
                jogar: () {
                  jogar(Spock());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  jogar(Jogada jogada) {
    var jogadaComputador = Computador.jogar();
    var resultadoJogo = jogada.executar(jogadaComputador);

    print(resultadoJogo);

    Map<String, IconData> mapIcons = {
      'pedra': FontAwesomeIcons.handFist,
      'papel': FontAwesomeIcons.solidHand,
      'tesoura': FontAwesomeIcons.solidHandPeace,
      'lagarto': FontAwesomeIcons.solidHandLizard,
      'spock': FontAwesomeIcons.solidHandSpock
    };

    setState(() {
      statusJogo = resultadoJogo['mensagem'] ?? 'Você';
      iconComputerPlay =
          mapIcons[jogadaComputador.name] ?? FontAwesomeIcons.question;
      iconUserPlay = mapIcons[jogada.getTipo()] ?? FontAwesomeIcons.question;
      iconStatus = getStatusIcon(resultadoJogo['resultado'] ?? 'empatou');
    });
  }

  getStatusIcon(String resultado) {
    if (resultado == Resultado.venceu.name) {
      return FontAwesomeIcons.solidFaceGrinStars;
    } else if (resultado == Resultado.perdeu.name) {
      return FontAwesomeIcons.solidFaceSadCry;
    } else {
      return FontAwesomeIcons.solidFaceMeh;
    }
  }

  reiniciar() {
    setState(() {
      statusJogo = 'Sua jogada aparecerá aqui!';
      iconComputerPlay = FontAwesomeIcons.question;
      iconUserPlay = FontAwesomeIcons.question;
      iconStatus = FontAwesomeIcons.question;
    });
  }
}
