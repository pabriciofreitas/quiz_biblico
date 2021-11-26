import 'package:flutter/cupertino.dart';

import '../models/pagina.dart';

class PerguntaController extends ChangeNotifier {
  List<Pagina> perguntas = [
    Pagina(
        pergunta: "Qual a mulher que acolheu o seu inimigo e depois o matou?",
        respostas: ["Raquel", "Abigail", "Débora", "Jael"],
        respostaCerta: "Jael"),
    Pagina(
        pergunta: "Em quais livros da Bíblia não encontramos a palavra 'Deus'?",
        respostas: [
          "Ester e Cânticos",
          "Ageu e Amós",
          "Oséias e Eclesiastes",
          "Tito e filemón"
        ],
        respostaCerta: "Ester e Cânticos"),
    Pagina(
        pergunta: "Quem teve seu corpo disputado pelo arcanjo Miguel e o Diabo",
        respostas: ["Jesus", "Eliseu", "Moisés", "Pedro"],
        respostaCerta: "Moisés"),
    Pagina(
        pergunta: "Quem governou sendo rei e sacerdote ao mesmo tempo?",
        respostas: ["Joacaz", "Melquisedeque", " Manassés", "Salomão"],
        respostaCerta: "Melquisedeque"),
    Pagina(
        pergunta: "Qual era a idade de Calebe quando pediu Hebrom para Josué??",
        respostas: ["40 anos", "80 anos", "85 anos", "120 anos"],
        respostaCerta: "85 anos"),
    Pagina(
        pergunta: "Por quantas moedas José foi vendido pelos seus irmãos??",
        respostas: [
          "10 moedas de ouro",
          "30 moedas de prata",
          "20 denários",
          "20 moedas de prata"
        ],
        respostaCerta: "20 moedas de prata"),
    Pagina(
        pergunta:
            "Quem foram apelidados por Jesus de Boanerges que significa 'Filhos do Trovão'?",
        respostas: [
          "João e Pedro",
          "João e Tiago",
          "Pedro e Tiago",
          "Paulo e Barnabé"
        ],
        respostaCerta: "João e Tiago"),
    Pagina(
        pergunta:
            "A estátua do sonho de Nabucodonosor era composta de quais elementos?",
        respostas: [
          "Toda em ouro.",
          "Ouro, prata, bronze, ferro e barro.",
          "Ouro, prata, bronze, onix e ferro.",
          "Ouro, prata, bronze, ferro e Jade"
        ],
        respostaCerta: "Ouro, prata, bronze, ferro e barro."),
    Pagina(
        pergunta:
            "Em Tessalônica, Paulo, Silas e Timóteo se refugiaram na casa de qual irmão?",
        respostas: ["Apolo", "Barnabé", "Jasom", "Barsabás"],
        respostaCerta: "Jasom"),
  ];

  int proximaPagina(List<Pagina> listPagina) {
    for (Pagina pagina in listPagina) {
      if (!pagina.viuResposta) {
        return listPagina.indexOf(pagina, 0);
      }
    }
    return 11;
  }
}
