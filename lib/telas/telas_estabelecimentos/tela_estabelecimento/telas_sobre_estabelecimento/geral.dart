import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Geral extends StatelessWidget {
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
          _infosEstabelecimentos(),
          _quemSomos(),
        ],
      ),
    );
  }

  _topEstabelecimento() {
    return Container(
      child: Row(
        children: [
          ClipOval(
            child: Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: Image.network(
                  "https://i1.wp.com/multarte.com.br/wp-content/uploads/2020/07/pngtree-black-and-white-barber-shop-logo-png-image_4359640.jpg?fit=696%2C696&ssl=1"),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: CustomText(
                    texto: "Estabelecimento X",
                    bold: true,
                    tamanhoFonte: 21,
                    cor: Colors.white,
                  ),
                ),
                Container(
                  child: CustomText(
                    texto: "Dono: Vagner Silva",
                    bold: true,
                    tamanhoFonte: 17,
                    cor: Colors.white60,
                  ),
                ),
                Container(
                  child: CustomText(
                    texto: "Cidade: Ibicuitinga",
                    bold: true,
                    tamanhoFonte: 17,
                    cor: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _infosEstabelecimentos() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.room,
                  color: Colors.white60,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 5,
                    ),
                    child: CustomText(
                      texto: "Av Antônio Damasceno, Viçosa, 13.",
                      tamanhoFonte: 18,
                      cor: Colors.white60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.business_center,
                  color: Colors.white60,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 5,
                    ),
                    child: CustomText(
                      texto: "Funcionamento: Segunda á Sexta.",
                      tamanhoFonte: 18,
                      cor: Colors.white60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.white60,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 5,
                    ),
                    child: CustomText(
                      texto: "Abre as 07:00 hrs. Fecha as 16:00 hrs.",
                      tamanhoFonte: 18,
                      cor: Colors.white60,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _quemSomos() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: CustomText(
              texto: "Quem somos?",
              cor: Colors.white,
              bold: true,
              tamanhoFonte: 19,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: CustomText(
              cor: Colors.white70,
              tamanhoFonte: 18,
              bold: true,
              texto:
                  "Nosso estabelecimento é o melhor lugar para o cliente! BlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlablalablaBlablaBlabla",
            ),
          ),
        ],
      ),
    );
  }
}
