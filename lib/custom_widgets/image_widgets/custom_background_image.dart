import 'package:flutter/material.dart';

class CustomBackGroundImage extends StatelessWidget {
  final String caminhoDeImagem;

  final Widget child;

  CustomBackGroundImage({this.caminhoDeImagem, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(caminhoDeImagem),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}
