import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  onTap: () {},
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
        ),
      ),
    );
  }
}

/*SizedBox(




ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    decoration: ,
                    height: 50,
                    width: 100,
                    child: Text(
                      "Start!",
                    ),
                  ),

                  //alignment: AlignmentDirectional.center,
                  //padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),



                    height: 100,
                    width: 250,
                    child: Text(
                      "Start!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),*/