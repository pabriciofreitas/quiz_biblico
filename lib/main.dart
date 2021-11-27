import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controller/home_controller.dart';
import 'controller/pergunta_controller.dart';
import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Provedor de mudança de notificador
        ChangeNotifierProvider<PerguntaController>.value(
            value: PerguntaController()),

        ChangeNotifierProvider<HomeControler>.value(value: HomeControler()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "lato",
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          primaryColor: const Color(0xFF758CFF),
          // primarySwatch: Color(0xFF758CFF),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
