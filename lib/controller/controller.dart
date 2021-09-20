import 'package:flutter/material.dart';

class Controller {
  static List<Object> questoes = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10];

  static Pagina p1 = Pagina(
      pergunta: "Qual a mulher que acolheu o seu inimigo e depois o matou?",
      respostas: ["Raquel", "Abigail", "Débora", "Jael"],
      respostaCerta: "Jael");
  static Pagina p2 = Pagina(
      pergunta: "Em quais livros da Bíblia não encontramos a palavra 'Deus'?",
      respostas: [
        "Ester e Cânticos",
        "Ageu e Amós",
        "Oséias e Eclesiastes",
        "Tito e filemón"
      ],
      respostaCerta: "Ester e Cânticos");
  static Pagina p3 = Pagina(
      pergunta:
          "Na visão profética de João qual era o número de cavaleiros do Apocalipse?",
      respostas: ["7", "4", "5", "12"],
      respostaCerta: "4");
  static Pagina p4 = Pagina(
      pergunta: "Quem teve seu corpo disputado pelo arcanjo Miguel e o Diabo",
      respostas: ["Jesus", "Eliseu", "Moisés", "Pedro"],
      respostaCerta: "Moisés");
  static Pagina p5 = Pagina(
      pergunta: "Quem governou sendo rei e sacerdote ao mesmo tempo?",
      respostas: ["Joacaz", "Melquisedeque", " Manassés", "Salomão"],
      respostaCerta: "Melquisedeque");
  static Pagina p6 = Pagina(
      pergunta: "Qual era a idade de Calebe quando pediu Hebrom para Josué??",
      respostas: ["40 anos", "80 anos", "85 anos", "120 anos"],
      respostaCerta: "85 anos");
  static Pagina p7 = Pagina(
      pergunta: "Por quantas moedas José foi vendido pelos seus irmãos??",
      respostas: [
        "10 moedas de ouro",
        "30 moedas de prata",
        "20 denários",
        "20 moedas de prata"
      ],
      respostaCerta: "20 moedas de prata");
  static Pagina p8 = Pagina(
      pergunta:
          "Quem foram apelidados por Jesus de Boanerges que significa 'Filhos do Trovão'?",
      respostas: [
        "João e Pedro",
        "João e Tiago",
        "Pedro e Tiago",
        "Paulo e Barnabé"
      ],
      respostaCerta: "João e Tiago");
  static Pagina p9 = Pagina(
      pergunta:
          "A estátua do sonho de Nabucodonosor era composta de quais elementos?",
      respostas: [
        "Toda em ouro.",
        "Ouro, prata, bronze, ferro e barro.",
        "Ouro, prata, bronze, onix e ferro.",
        "Ouro, prata, bronze, ferro e Jade"
      ],
      respostaCerta: "Ouro, prata, bronze, ferro e barro.");
  static Pagina p10 = Pagina(
      pergunta:
          "Em Tessalônica, Paulo, Silas e Timóteo se refugiaram na casa de qual irmão?",
      respostas: ["Apolo", "Barnabé", "Jasom", "Barsabás"],
      respostaCerta: "Jasom");
}

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

class Potuncao {
  int potuncao;
  Potuncao({
    required this.potuncao,
  });
}
