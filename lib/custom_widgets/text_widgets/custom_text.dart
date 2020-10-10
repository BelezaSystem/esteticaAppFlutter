import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String texto;
  final Color cor;
  final double tamanhoFonte;
  final bool bold;
  final bool underline;
  final Shadow shadow;

  CustomText({
    @required this.texto,
    this.cor,
    this.tamanhoFonte,
    this.bold = false,
    this.underline = false,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: cor,
        fontSize: tamanhoFonte,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        shadows: [
          shadow,
        ],
      ),
    );
  }
}
