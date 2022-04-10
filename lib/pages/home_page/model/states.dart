import 'package:flutter/material.dart';

class PropriedadesPagina {
  IconData iconeJogador, iconeJogadaCumpotador, iconeStatusJogada;

  String statusJogo;
  bool finalidado;

  PropriedadesPagina({
    required this.iconeJogador,
    required this.iconeJogadaCumpotador,
    required this.iconeStatusJogada,
    required this.statusJogo,
    required this.finalidado,
  });
}
