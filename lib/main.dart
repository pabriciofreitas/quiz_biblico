import 'package:flutter/material.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  /* MyApp() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF758CFF),
        // primarySwatch: Color(0xFF758CFF),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
