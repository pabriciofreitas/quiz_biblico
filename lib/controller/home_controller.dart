import 'package:flutter/material.dart';

class HomeControler extends ChangeNotifier {
  PageController controllerPagina = PageController(initialPage: 0);
  navigatorPage(int index) {
    controllerPagina.animateToPage(index,
        duration: Duration(milliseconds: 250), curve: Curves.bounceIn);
  }
}
