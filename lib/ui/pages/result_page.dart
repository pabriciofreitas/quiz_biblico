import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Center(
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
                    color: const Color(0xff758CFF),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text("Sua pontuação foi de:",
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      color: const Color(0xff000000),
                    )),
                Text("5/10 Acertos",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w600,
                    )),
                TextButton(
                  onPressed: () {},
                  //

                  //
                  child: Text("Tente novamente",
                      style: GoogleFonts.lato(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff758CFF),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
