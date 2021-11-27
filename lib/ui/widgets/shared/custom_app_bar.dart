import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String title;
  const CustomAppBar({
    Key? key,
    this.title = "Perguntas e respostas",
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF758CFF),
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xffffffff),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
