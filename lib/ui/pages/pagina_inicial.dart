import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          //border: BoxBorder(16),
          color: Color(0xffffffff),
        ),
        width: size.height * 0.52,
        height: size.height * 0.30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Perguntas e Respostas",
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Color(0xff758CFF),
                fontWeight: FontWeight.w900,
              ),
            ),
            Text("Responda 10 perguntas e veja sua pontuação no fim!",
                style: GoogleFonts.lato(
                  fontSize: 12,
                  color: const Color(0xff000000),
                )),
            InkWell(
              onTap: () {
                HomeControler homeControler =
                    Provider.of<HomeControler>(context, listen: false);
                homeControler.navigatorPage(1);
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
