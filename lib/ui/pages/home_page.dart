import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';
import 'pages.dart';
import 'pagina_inicial.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    HomeControler homeControler = Provider.of<HomeControler>(context);
    @override
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E9FF),
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
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: homeControler.controllerPagina,
          children: [
            PaginaInicial(
              size: size,
            ),
            PerguntasPage(),
            ResultPage()
          ],
        ),
      ),
    );
  }
}
