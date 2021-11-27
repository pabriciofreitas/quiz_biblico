import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget? leading;
  CustomAppBar({
    Key? key,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: const Text("Perguntas e respostas"),
      centerTitle: true,
    );
  }

  Size get PreferredSize => const Size.fromHeight(56);

  @override
  Size get preferredSize => throw UnimplementedError();
}
