import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant/constant.dart';
import '../../controller/pergunta_controller.dart';

class PerguntasPage extends StatefulWidget {
  const PerguntasPage({
    Key? key,
  }) : super(key: key);

  @override
  _PerguntasPageState createState() => _PerguntasPageState();
}

class _PerguntasPageState extends State<PerguntasPage> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Consumer<PerguntaController>(
      builder: (context, perguntaController, widget) {
        return _buildQuestionsPage();
        // return PageView.builder(
        //   physics: NeverScrollableScrollPhysics(),
        //   controller: pageController,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         //mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Padding(
        //             padding: EdgeInsets.symmetric(vertical: 20),
        //             child: Text("perguntaController.perguntas[index].pergunta",
        //                 textAlign: TextAlign.start,
        //                 style: GoogleFonts.lato(
        //                   fontSize: 16,
        //                   color: const Color(0xff000000),
        //                 )),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(bottom: 20),
        //             child: Text("Respostas",
        //                 textAlign: TextAlign.start,
        //                 style: GoogleFonts.lato(
        //                   fontSize: 16,
        //                   color: const Color(0xFF758CFF),
        //                 )),
        //           ),
        //           Expanded(
        //             child: ListView.separated(
        //               physics: NeverScrollableScrollPhysics(),
        //               itemCount: 4,
        //               separatorBuilder: (context, _index) => SizedBox(
        //                 height: 20,
        //               ),
        //               itemBuilder: (context, _index) => Container(
        //                   height: 80,
        //                   decoration: BoxDecoration(
        //                     color: const Color(0xFFE5FFE6),
        //                     borderRadius: BorderRadius.circular(16),
        //                     border: Border.all(
        //                       color: const Color(0xFF38C53D),
        //                     ),
        //                     // color: Colors.grey[100], //0xffE5E9FF
        //                   ),
        //                   child: Row(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.all(15.0),
        //                         child: Container(
        //                           height: 20,
        //                           width: 20,
        //                           decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(4.0),
        //                             //border: Border.all( color: const Color(0xFF758CFF)),
        //                             color: const Color(0xFF38C53D),
        //                           ),
        //                           child: const Center(
        //                             child: Icon(
        //                               Icons.check,
        //                               color: Colors.white,
        //                               size: 20,
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                       const Padding(
        //                         padding: EdgeInsets.only(top: 15),
        //                         child: Text(
        //                           "perguntaController.perguntas[index].respostas[_index]",
        //                           style: TextStyle(fontSize: 18),
        //                         ),
        //                       )
        //                     ],
        //                   )),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.symmetric(vertical: 20.0),
        //             child: InkWell(
        //                 onTap: () {
        //                   constantes[index].viuResposta = true;
        //                   int indexPagina = perguntaController
        //                       .proximaPagina(perguntaController.perguntas);
        //                   if (indexPagina ==
        //                       perguntaController.perguntas.length) {
        //                     HomeControler homeControler =
        //                         Provider.of<HomeControler>(context,
        //                             listen: false);
        //                     homeControler.navigatorPage(2);
        //                     perguntaController.zerarEstado();
        //                   } else {
        //                     pageController.animateToPage(indexPagina,
        //                         duration: Duration(milliseconds: 250),
        //                         curve: Curves.bounceIn);
        //                   }
        //                 },
        //                 child: Container(
        //                   height: size.height * 0.075,
        //                   width: size.height * 0.65,
        //                   decoration: BoxDecoration(
        //                     color: Colors.black12,
        //                     borderRadius: BorderRadius.circular(32),
        //                   ),
        //                   //
        //                   child: Center(
        //                     child: Text(
        //                       "Responder",
        //                       textAlign: TextAlign.center,
        //                       style: GoogleFonts.lato(
        //                         fontSize: 18,
        //                         color: const Color(0xffffffff),
        //                         fontWeight: FontWeight.w900,
        //                       ),
        //                     ),
        //                   ),
        //                 )),
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        // );
      },
    );
  }

  Widget _buildQuestionsPage() {
    return PageView.builder(
      itemCount: questions.length,
      //physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      itemBuilder: (context, index) {
        final question = questions[index];
        return Container(
          child: Text(question.question),
        );
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
