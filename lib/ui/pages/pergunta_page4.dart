import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages.dart';
import 'pergunta_page5.dart';

class PerguntasPage4 extends StatefulWidget {
  const PerguntasPage4({Key? key}) : super(key: key);

  @override
  _PerguntasPage4State createState() => _PerguntasPage4State();
}

var questao = Controller.p4;

/*
bool viuResposta = false;
String respostaCerta = "Rubem";
String textButton = "Resonder";
bool? respondeu;
int? escolhida;
Color corButton = Color(0xffD4D4D4);
const List<String> l = [
  "Dan",
  "Rubem",
  "Juda",
  "josé",
];

*/

class _PerguntasPage4State extends State<PerguntasPage4> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final arguments = ModalRoute.of(context)?.settings.arguments as Potuncao;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xFF758CFF),
        centerTitle: true,
        title: Text(
          "Perguntas e respostas",
          style: GoogleFonts.lato(
            fontSize: 17,
            color: const Color(0xffffffff),
          ),
        ),
      ),
      //
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(questao.pergunta,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color(0xff000000),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Text("Respostas",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: const Color(0xFF758CFF),
                    )),
              ),
              Expanded(
                /*
                color: Colors.amber[200],
                height: size.height * 0.4,
                width: size.height * 0.53,
               */
                //flex: 3,

                //
                child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16.0),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      if (questao.respondeu == true) {
                        if (index == questao.escolhida) {
                          return Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE5FFE6),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xFF38C53D),
                              ),
                              // color: Colors.grey[100], //0xffE5E9FF
                            ),
                            child: ListTile(
                              title: Text(questao.respostas[index]),
                              leading: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: const Color(0xFF38C53D),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Color(0xffd3d3d3),
                              ),
                              // color: Colors.grey[100], //0xffE5E9FF
                            ),
                            child: ListTile(
                              title: Text(questao.respostas[index]),
                              leading: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF758CFF),
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                  //color: Colors.blue,
                                ),
                              ),
                            ),
                          );
                        }
                      } else if (questao.respondeu == false) {
                        if (index == questao.escolhida) {
                          return Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFD6D6),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xFFFF5A5A),
                              ),
                              // color: Colors.grey[100], //0xffE5E9FF
                            ),
                            child: ListTile(
                              title: Text(questao.respostas[index]),
                              leading: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: const Color(0xFFFF5A5A),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else if (index ==
                            questao.respostas.indexOf(questao.respostaCerta)) {
                          return Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE5FFE6),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xFF38C53D),
                              ),
                              // color: Colors.grey[100], //0xffE5E9FF
                            ),
                            child: ListTile(
                              title: Text(questao.respostas[index]),
                              leading: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: const Color(0xFF38C53D),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xffd3d3d3),
                              ),
                              // color: Colors.grey[100], //0xffE5E9FF
                            ),
                            child: ListTile(
                              title: Text(questao.respostas[index]),
                              leading: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF758CFF),
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                  //color: Colors.blue,
                                ),
                              ),
                            ),
                          );
                        }
                      }
                      if (questao.escolhida != null) {
                        if (questao.escolhida == index) {
                          //
                          //Passar cor
                          //
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  questao.escolhida = index;
                                  questao.corButton = Color(0xFF758CFF);
                                });
                              },
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE5E9FF),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: const Color(0xFF758CFF),
                                  ),
                                  // color: Colors.grey[100], //0xffE5E9FF
                                ),
                                child: ListTile(
                                  title: Text(questao.respostas[index]),
                                  leading: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: const Color(0xFF758CFF),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ));
                          //

                          //
                        } else {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                questao.escolhida = index;
                                questao.corButton = Color(0xFF758CFF);
                              });
                            },
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Color(0xffd3d3d3),
                                ),
                                // color: Colors.grey[100], //0xffE5E9FF
                              ),
                              child: ListTile(
                                title: Text(questao.respostas[index]),
                                leading: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF758CFF),
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                    //color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      } else {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              questao.escolhida = index;
                              questao.corButton = Color(0xFF758CFF);
                            });
                          },
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: const Color(0xffd3d3d3),
                              ),
                              // color: Colors.grey[100], //0xffE5E9FF
                            ),
                            child: ListTile(
                              title: Text(questao.respostas[index]),
                              leading: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF758CFF),
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                  //color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    }),
              ),
              //

              //
              InkWell(
                  onTap: () {
                    if (questao.escolhida != null) {
                      setState(() {
                        questao.textButton = "Próxima pergunta";
                        if (questao.viuResposta == true) {
                          Potuncao pontos =
                              Potuncao(potuncao: arguments.potuncao);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                //settings: ,
                                builder: (context) => (PerguntasPage5()),
                                settings: RouteSettings(
                                  name: "/profile",
                                  arguments: pontos,
                                ),
                              ));
                        } else {
                          if (questao.respostas[questao.escolhida!] ==
                              questao.respostaCerta) {
                            arguments.potuncao += 1;
                            //corButton = Color(0xFF38C53D);
                            questao.respondeu = true;
                            questao.viuResposta = true;
                          } else {
                            questao.respondeu = false;
                            questao.viuResposta = true;
                          }
                        }
                      });
                    }

                    // Navigator.push(context,  MaterialPageRoute(builder: (context) => ResultPage()));
                  },
                  child: Container(
                    height: size.height * 0.075,
                    width: size.height * 0.65,
                    decoration: BoxDecoration(
                      color: questao.corButton,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    //
                    child: Center(
                      child: Text(
                        questao.textButton,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}





















/*

 ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 10,
                          width: 10,
                          color: Colors.blue,
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 5,
                          ),
                      itemCount: 4),

 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
width: size.height * 0.52,
          height: size.height * 0.30,

Text(
                  "Perguntas e Respostas",
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    color: Color(0xff758CFF),
                    fontWeight: FontWeight.w900,
                  ),
                ),

InkWell(
                    onTap: () {
                      /* Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultPage()));*/
                    },
                    child: Container(
                      height: size.height * 0.07,
                      width: size.height * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xff758CFF),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      //
                      child: Center(
                        child: Text(
                          "Start!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    )),
                    */
