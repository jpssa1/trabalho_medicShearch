import 'package:flutter/material.dart';
import 'package:medic_app/componentes/remedio.dart';
import 'package:medic_app/cores/color.dart';
import 'package:medic_app/telas/remedio/remedio_detalhes_page.dart';
import 'package:page_transition/page_transition.dart';

class RemedioScreenView extends StatelessWidget {
  final String titulo;
  final String imagem;
  final Remedio remedio;
  const RemedioScreenView({
    super.key,
    required this.titulo,
    required this.imagem,
    required this.remedio,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            child: RemedioDetalhesPage(remedio: remedio),
            type: PageTransitionType.rightToLeft,
          ),
        );
      },
      child: Card(
        color: Cor.verdeIcones,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                imagem,
                width: 130,
                height: 130,
              ),
            ),
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
