import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final double tamanho;
  final IconData icone;
  final String? texto;

  const CardWidget(
      {Key? key, required this.tamanho, required this.icone, this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class ButtonWidget extends StatelessWidget {
  final double tamanho;
  final IconData icone;
  final String texto;
  final VoidCallback? jogar;

  const ButtonWidget(
      {Key? key,
      required this.tamanho,
      required this.icone,
      required this.texto,
      this.jogar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextButton(
        onPressed: jogar,
        child: SizedBox(
          width: 75,
          height: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icone, size: tamanho),
              Text(
                texto,
                style: const TextStyle(color: Colors.white30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
