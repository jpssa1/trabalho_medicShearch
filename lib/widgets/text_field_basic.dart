import 'package:flutter/material.dart';
import 'package:medic_app/cores/color.dart';

class TextFieldBasic extends StatelessWidget {
  final String texto;
  final Color corTexto;
  final Color corborda;
  final IconData? icone;

  const TextFieldBasic({
    super.key,
    required this.texto,
    required this.corTexto,
    required this.corborda,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Cor.branco),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        prefixIcon: Icon(
          icone,
          color: Cor.azulclaro,
        ),
        hintText: texto,
        hintStyle: TextStyle(color: corTexto),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: corborda,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: corborda,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
