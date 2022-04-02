import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const BBTJokenpo());

class BBTJokenpo extends StatelessWidget {
  const BBTJokenpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const MyHomePage(title: 'Big Bang Jokenpo'),
    );
  }
}

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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    makeCard(
                        75, FontAwesomeIcons.solidHandLizard, 'Computador'),
                    makeCard(150, FontAwesomeIcons.solidHandSpock, 'Spock'),
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
              makeButton('Pedra', FontAwesomeIcons.handFist),
              makeButton('Papel', FontAwesomeIcons.solidHand),
              makeButton('Tesoura', FontAwesomeIcons.solidHandPeace),
              makeButton('Lagarto', FontAwesomeIcons.solidHandLizard),
              makeButton('Spock', FontAwesomeIcons.solidHandSpock),
            ],
          ),
        ],
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

  makeCard(double tamanho, IconData icone, [String? texto]) {
    return Column(
      children: [
        Card(
          color: Colors.white10,
          margin: const EdgeInsets.only(bottom: 16),
          child: SizedBox(
            width: tamanho,
            height: tamanho,
            child: Icon(
              icone,
              size: tamanho * 0.75,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Text(
          texto ?? '',
          style: const TextStyle(fontSize: 24, color: Colors.white30),
        ),
      ],
    );
  }

  makeButton(String tipo, IconData icone) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextButton(
        onPressed: () {},
        child: SizedBox(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icone, size: 36),
              Text(
                tipo,
                style: const TextStyle(color: Colors.white30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
