import 'package:flutter/material.dart';
import 'package:medic_app/cores/color.dart';
import 'package:page_transition/page_transition.dart';

class ButtonBasic extends StatelessWidget {
  final Widget page;
  final String texto;
  final Color cor;
  const ButtonBasic({
    super.key,
    required this.page,
    required this.texto,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        minimumSize: const Size(320, 60),
      ),
      onPressed: () {
        Navigator.push(
          context,
          PageTransition(
              child: page,
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400)),
        );
      },
      child: Text(
        texto,
        style: const TextStyle(
          color: Cor.branco,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
