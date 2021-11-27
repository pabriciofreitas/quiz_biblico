import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';
import '../widgets/shared/custom_app_bar.dart';
import 'pages.dart';
import 'pagina_inicial.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeControler _homeControler;

  final PageController _controllerPage = PageController();
  // o init state é chamado mesmo antes da view ser criada
  // @override
  // void initState() {
  //
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    //Ele é chamado só quando tem context
    _homeControler = Provider.of<HomeControler>(context);
    super.didChangeDependencies();
  }

  void _navigatorPage(int index) {
    _controllerPage.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E9FF),
      appBar: const CustomAppBar(),
      //
      body: SafeArea(
        child: _body(),
      ),
    );
  }

  Widget _body() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _controllerPage,
      children: [
        PaginaInicial(
          onNextPage: () => _navigatorPage(1),
        ),
        const PerguntasPage(),
        const ResultPage()
      ],
    );
  }

  @override
  void dispose() {
    _controllerPage.dispose();
    super.dispose();
  }
}
