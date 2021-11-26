import 'package:flutter/material.dart';

class Pagina {
  String pergunta;
  List<String> respostas;
  bool viuResposta = false;
  String respostaCerta;
  String textButton = "Responder";
  bool? respondeu; // = false
  int? escolhida;
  Color corButton = Color(0xffD4D4D4);

  Pagina({
    required this.pergunta,
    required this.respostas,
    //required this.viuResposta,
    required this.respostaCerta,
    // required this.textButton,
    // required this.respondeu,
    //required this.escolhida,
    //required this.corButton,
  });
  @override
  String toString() {
    return "$pergunta | $respostas";
  }
}
