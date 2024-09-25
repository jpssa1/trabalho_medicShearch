import 'package:flutter/material.dart';
import 'package:medic_app/cores/color.dart';

class TextFieldBasic extends StatelessWidget {
  final String texto;
  const TextFieldBasic({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Cor.branco),
      decoration: InputDecoration(
        hintText: texto,
        hintStyle: const TextStyle(color: Cor.verdeNeo),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Cor.branco,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Cor.verdeNeo,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
