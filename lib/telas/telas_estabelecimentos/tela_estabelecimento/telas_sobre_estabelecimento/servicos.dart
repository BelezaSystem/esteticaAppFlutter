import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 45, 111, 1),
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _topEstabelecimento(),
        ],
      ),
    );
  }

  _topEstabelecimento() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              child: CustomText(
                texto: "Cortes de Cabelo",
                bold: true,
                tamanhoFonte: 25,
                cor: Colors.white70,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CustomText(
              texto: "Corte Degradê",
              bold: true,
              tamanhoFonte: 20,
              cor: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CustomText(
              texto: "Corte Normal",
              bold: true,
              tamanhoFonte: 20,
              cor: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CustomText(
              texto: "Corte navalhado",
              bold: true,
              tamanhoFonte: 20,
              cor: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

/*

 
 */
