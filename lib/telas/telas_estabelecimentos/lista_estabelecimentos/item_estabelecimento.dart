import 'package:app_estetica/custom_widgets/text_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ItemEstabelecimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  _body() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 70,
            right: 5,
          ),
          height: 150,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(51, 51, 102, 1),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 50,
                top: 20,
                child: CustomText(
                  texto: "Barber Shop do João Silva",
                  bold: true,
                  tamanhoFonte: 25,
                  cor: Colors.white,
                ),
              ),
              Positioned(
                left: 50,
                top: 55,
                child: CustomText(
                  texto: "Dono: Vagner Silva",
                  bold: true,
                  tamanhoFonte: 18,
                  cor: Colors.white60,
                ),
              ),
              Positioned(
                left: 45,
                top: 100,
                child: Row(
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.white60,
                    ),
                    CustomText(
                      texto: "Av Antônio Rodrigues Damasceno, Viçosa, 13",
                      tamanhoFonte: 15,
                      cor: Colors.white60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 35,
          left: 10,
          child: _image(),
        ),
      ],
    );
  }

  _image() {
    return ClipOval(
      child: Container(
        height: 100,
        child: Image.network(
            "https://i1.wp.com/multarte.com.br/wp-content/uploads/2020/07/pngtree-black-and-white-barber-shop-logo-png-image_4359640.jpg?fit=696%2C696&ssl=1"),
      ),
    );
  }
}
