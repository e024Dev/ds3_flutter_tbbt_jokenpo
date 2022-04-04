import 'package:ds3_tbbt_flutter_jokenpo/pages/home_page/service/service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/home_page_widgets.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  late ButtonWidget buttonPapel,
      buttonTesoura,
      buttonPedra,
      buttonLagarto,
      buttonSpock;

  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    widget.buttonPedra = ButtonWidget(
        texto: 'Pedra', tamanho: 36, icone: FontAwesomeIcons.handFist, jogar: (){
          
        });

    // widget.buttonPapel = const ButtonWidget(
    //     texto: 'Papel', tamanho: 36, icone: FontAwesomeIcons.solidHand);

    // widget.buttonTesoura = const ButtonWidget(
    //     texto: 'Tesoura', tamanho: 36, icone: FontAwesomeIcons.solidHandPeace);
    // widget.buttonLagarto = const ButtonWidget(
    //     texto: 'Lagarto', tamanho: 36, icone: FontAwesomeIcons.solidHandLizard);

    // widget.buttonSpock = const ButtonWidget(
    //     texto: 'Spock', tamanho: 36, icone: FontAwesomeIcons.solidHandSpock);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.restart_alt),
          )
        ],
      ),
      body: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(width: double.infinity),
                      CardWidget(
                          tamanho: 75,
                          icone: FontAwesomeIcons.solidHandLizard,
                          texto: 'Computador'),
                      CardWidget(
                          tamanho: 150,
                          icone: FontAwesomeIcons.solidHandSpock,
                          texto: 'Spock'),
                    ],
                  ),
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(
                      FontAwesomeIcons.faceLaughBeam,
                      size: 48,
                      color: Colors.white24,
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                widget.buttonPedra,
                widget.buttonPapel,
                widget.buttonTesoura,
                widget.buttonLagarto,
                widget.buttonSpock,
              ],
            ),
          ],
        ),
      ),
    );
  }

  setResultIcon(String resultado) {
    IconData icon;
    if (resultado == 'venceu') {
      icon = Icons.face;
    } else if (resultado == 'empatou') {
      icon = Icons.adb;
    } else {
      icon = Icons.add;
    }
  }
}
